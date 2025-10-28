# Whisper XPU Testing

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

### Stage 3 - Extract Audio From Video -> Transcribe -> LLM