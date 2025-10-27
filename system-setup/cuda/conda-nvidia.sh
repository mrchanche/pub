#!/bin/bash

# Define state file directory
STATE_DIR="/var/tmp/conda-cuda-install"
STATE_FILE="$STATE_DIR/conda-cuda-install-state"

# Create state directory if it doesn't exist
mkdir -p "$STATE_DIR"

# Read current stage (default to 1 if state file doesn't exist)
if [[ -f "$STATE_FILE" ]]; then
    STAGE=$(cat "$STATE_FILE")
else
    STAGE=1
fi

# Function to update stage and reboot
next_stage() {
    echo "$1" > "$STATE_FILE"
    echo "Proceed to stage $1..."
}


# Main logic
case $STAGE in
    1)
        echo "Stage 1: Install and activate miniconda3"
        
		mkdir -p ~/miniconda3
		wget https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh -O ~/miniconda3/miniconda.sh
		bash ~/miniconda3/miniconda.sh -b -u -p ~/miniconda3
		rm ~/miniconda3/miniconda.sh
				
        if [[ $? -eq 0 ]]; then
            echo "Stage 1 completed."
            echo "Please run: source ~/miniconda3/bin/activate"
            echo "Initialize conda: conda init --all"
            next_stage 2
        else
            echo "Stage 1 failed. Check logs."
            exit 1
        fi
        ;;
    2)
        echo "Stage 2: Setup miniconda and create rocm environment"

		conda tos accept --override-channels --channel https://repo.anaconda.com/pkgs/main
		conda tos accept --override-channels --channel https://repo.anaconda.com/pkgs/r
		mkdir -p ~/Jupyter/cuda
		conda create -n rocm python=3.13 -y
		
        if [[ $? -eq 0 ]]; then
            echo "Stage 2 completed."
            echo "Enter your conda environment: conda activate cuda"
            next_stage 3
        else
            echo "Stage 2 failed. Check logs."
            exit 1
        fi
        ;;
    3)
        echo "Stage 3: Install cuda pytorch"
        
		pip3 install --upgrade pip wheel

		pip3 install torch torchvision --index-url https://download.pytorch.org/whl/cu130
        
        pip install jupyterlab accelerate diffusers tqdm IProgress transformers scikit-learn matplotlib pillow numpy pandas safetensors ipywidgets sentencepiece openai-whisper triton

		python3 -c 'import torch' 2> /dev/null && echo 'Success' || echo 'Failure'
		python3 -c 'import torch; print(torch.cuda.is_available())'
		python3 -c "import torch; print(f'device name [0]:', torch.cuda.get_device_name(0))"
		python3 -m torch.utils.collect_env

        if [[ $? -eq 0 ]]; then
            echo "Stage 3 completed."
            next_stage 4
        else
            echo "Stage 3 failed. Check logs."
            exit 1
        fi
        ;;
    4)
        echo "Stage 4: Cleanup N/A"
        echo "Pytorch cuda environment install completed."
        exit 0
        ;;
    *)
        echo "Invalid stage: $STAGE. Resetting to stage 1."
        echo 1 > "$STATE_FILE"
        exit 1
        ;;
esac

