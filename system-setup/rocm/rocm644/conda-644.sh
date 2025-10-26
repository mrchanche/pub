#!/bin/bash

# Define state file directory
STATE_DIR="/var/tmp/conda-install"
STATE_FILE="$STATE_DIR/conda-install-state"

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
		mkdir -p ~/Jupyter/rocm
		conda create -n rocm python=3.12 -y
		
        if [[ $? -eq 0 ]]; then
            echo "Stage 2 completed."
            echo "Enter your conda environment: conda activate rocm"
            next_stage 3
        else
            echo "Stage 2 failed. Check logs."
            exit 1
        fi
        ;;
    3)
        echo "Stage 3: Install rocm pytorch"
        
		pip3 install --upgrade pip wheel

		wget https://repo.radeon.com/rocm/manylinux/rocm-rel-6.4.4/torch-2.8.0%2Brocm6.4.4.gitc1404424-cp312-cp312-linux_x86_64.whl
		wget https://repo.radeon.com/rocm/manylinux/rocm-rel-6.4.4/torchvision-0.23.0%2Brocm6.4.4.git824e8c87-cp312-cp312-linux_x86_64.whl
		wget https://repo.radeon.com/rocm/manylinux/rocm-rel-6.4.4/pytorch_triton_rocm-3.4.0%2Brocm6.4.4.gitf9e5bf54-cp312-cp312-linux_x86_64.whl
		wget https://repo.radeon.com/rocm/manylinux/rocm-rel-6.4.4/torchaudio-2.8.0%2Brocm6.4.4.git6e1c7fe9-cp312-cp312-linux_x86_64.whl
		pip3 uninstall torch torchvision pytorch-triton-rocm
		pip3 install torch-2.8.0+rocm6.4.4.gitc1404424-cp312-cp312-linux_x86_64.whl torchvision-0.23.0+rocm6.4.4.git824e8c87-cp312-cp312-linux_x86_64.whl torchaudio-2.8.0+rocm6.4.4.git6e1c7fe9-cp312-cp312-linux_x86_64.whl pytorch_triton_rocm-3.4.0+rocm6.4.4.gitf9e5bf54-cp312-cp312-linux_x86_64.whl
		pip install jupyterlab accelerate diffusers tqdm IProgress transformers scikit-learn matplotlib pandas safetensors ipywidgets triton
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
        echo "Stage 4: Cleanup"
		rm pytorch*
		rm torch*
        echo "Pytorch rocm environment install completed."
        exit 0
        ;;
    *)
        echo "Invalid stage: $STAGE. Resetting to stage 1."
        echo 1 > "$STATE_FILE"
        exit 1
        ;;
esac

