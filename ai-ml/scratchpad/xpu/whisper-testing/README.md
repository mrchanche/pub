# Whisper XPU Testing

These need to be **clean up**

### Stage 1 - Automatic Transcription

```python
import torch
import whisper

# Func to free up XPU VRAM from allocator
def clearvram():
    torch.xpu.memory.empty_cache()

# Clear VRAM
clearvram()

# Load a pre-trained model (e.g., "base", "small", "medium", "large", "turbo")
model = whisper.load_model("turbo", device="xpu") 

# Transcribe your audio file
result = model.transcribe("test.wav")

print(result["text"])

# Clear VRAM
clearvram()
```

### Stage 2 - Pass Transcription To LLM For Summarization

Working on cpu. 

```python
import torch
import whisper
from transformers import AutoModelForCausalLM, AutoTokenizer

device = "cpu"

# Load a pre-trained model (e.g., "base", "small", "medium", "large")
model = whisper.load_model("turbo", device="cpu") 

# Transcribe your audio file
result = model.transcribe("test.wav")

print(result["text"])

model_id = "microsoft/Phi-3-mini-4k-instruct" # Replace with your chosen model
tokenizer = AutoTokenizer.from_pretrained(model_id)
model = AutoModelForCausalLM.from_pretrained(model_id, torch_dtype=torch.bfloat16) # Adjust dtype as needed

prompt = result["text"]

inputs = tokenizer(prompt, return_tensors="pt", padding=True).to(device)

# Generate text
output_ids = model.generate(inputs.input_ids, max_new_tokens=150, num_return_sequences=1)

# Decode the generated text
generated_text = tokenizer.decode(output_ids[0], skip_special_tokens=True)
print(generated_text)
```

Works on GPU

```python
import torch
import whisper
from transformers import AutoModelForCausalLM, AutoTokenizer

# Func to free up XPU VRAM from allocator
def clearvram():
    torch.xpu.memory.empty_cache()

# Clear VRAM
clearvram()

# Load a pre-trained model (e.g., "base", "small", "medium", "large")
model = whisper.load_model("turbo", device="xpu") 

# Transcribe your audio file
result = model.transcribe("test.wav")

print(result["text"])

model_id = "microsoft/Phi-3-mini-4k-instruct" # Replace with your chosen model
tokenizer = AutoTokenizer.from_pretrained(model_id)
model = AutoModelForCausalLM.from_pretrained(model_id, device_map="xpu", torch_dtype=torch.bfloat16) # Adjust dtype as needed

prompt = result["text"]

inputs = tokenizer(prompt, return_tensors="pt", padding=True).to("xpu")

# Generate text
output_ids = model.generate(inputs.input_ids, max_new_tokens=150, num_return_sequences=1)

# Decode the generated text
generated_text = tokenizer.decode(output_ids[0], skip_special_tokens=True)
print(generated_text)

# Clear VRAM
clearvram()
```

### Stage 3 - Extract Audio From Video -> Transcribe -> LLM

```python
import torch
import whisper
from transformers import AutoModelForCausalLM, AutoTokenizer

# Func to free up XPU VRAM from allocator
def clearvram():
    torch.xpu.memory.empty_cache()

# Clear VRAM
clearvram()

# Load a pre-trained model (e.g., "base", "small", "medium", "large")
whisper_model = whisper.load_model("turbo", device="xpu")
result = whisper_model.transcribe("test2.wav")
transcript = result["text"]
print("Transcript:", transcript)

model_id = "microsoft/Phi-3-mini-4k-instruct" # Replace with your chosen model
tokenizer = AutoTokenizer.from_pretrained(model_id)
model = AutoModelForCausalLM.from_pretrained(model_id, device_map="xpu", torch_dtype=torch.bfloat16) # Adjust dtype as needed

model.eval()

# === 3. Build PROPER chat prompt for Phi-3 ===
messages = [
    {"role": "system", "content": "You are a helpful assistant that summarizes podcast transcripts concisely."},
    {"role": "user", "content": f"Please summarize the following podcast excerpt in 2-3 sentences:\n\n{transcript}"}
]

# Apply chat template
prompt = tokenizer.apply_chat_template(
    messages,
    tokenize=False,
    add_generation_prompt=True  # This adds <|assistant|>
)

print("\nFormatted Prompt:\n", prompt)

# === 4. Tokenize and generate ===
inputs = tokenizer(prompt, return_tensors="pt", padding=True).to("xpu")

with torch.no_grad():
    output_ids = model.generate(
        inputs.input_ids,
        max_new_tokens=150,
        temperature=0.7,
        do_sample=True,
        top_p=0.9,
        eos_token_id=tokenizer.eos_token_id,
        pad_token_id=tokenizer.pad_token_id
    )

# === 5. Decode only the NEW part (after input) ===
generated_text = tokenizer.decode(output_ids[0], skip_special_tokens=True)
response = generated_text[len(prompt):].strip()  # Remove input prompt

print("\nSummary:\n", response)

# === Cleanup ===
clearvram()
```