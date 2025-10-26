#!/bin/bash

# Define state file directory
STATE_DIR="/var/tmp/amdgpu-install"
STATE_FILE="$STATE_DIR/amdgpu-install-state"

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
    echo "Rebooting to proceed to stage $1..."
    reboot
}


# Main logic
case $STAGE in
    1)
        echo "Stage 1: Download and install amdgpu drivers/rocm."
        
		wget https://repo.radeon.com/amdgpu-install/6.4.2/ubuntu/noble/amdgpu-install_6.4.60402-1_all.deb
		sudo apt install ./amdgpu-install_6.4.60402-1_all.deb -y
		amdgpu-install -y --usecase=graphics,rocm
		
        if [[ $? -eq 0 ]]; then
            echo "Stage 1 completed."
            next_stage 2
            sudo reboot
        else
            echo "Stage 1 failed. Check logs."
            exit 1
        fi
        ;;
    2)
        echo "Stage 2: Add render and video group to user"
        sudo usermod -a -G render,video $LOGNAME
        if [[ $? -eq 0 ]]; then
            echo "Stage 2 completed."
            next_stage 3
            sudo reboot
        else
            echo "Stage 2 failed. Check logs."
            exit 1
        fi
        ;;
    3)
        echo "Stage 3: Validate driver and install lacd"
		dkms status
		rocminfo
		rocm-smi
		clinfo
		wget https://github.com/ilya-zlobintsev/LACT/releases/download/v0.8.0/lact-0.8.0-0.amd64.ubuntu-2404.deb
		sudo apt install ./lact-0.8.0-0.amd64.ubuntu-2404.deb -y
		sudo systemctl enable --now lactd
		sudo sed -i 's/^GRUB_CMDLINE_LINUX_DEFAULT=.*/GRUB_CMDLINE_LINUX_DEFAULT="quiet splash amdgpu.ppfeaturemask=0xffffffff"/' /etc/default/grub
		sudo update-grub
        if [[ $? -eq 0 ]]; then
            echo "Stage 3 completed."
            next_stage 4
            sudo reboot
        else
            echo "Stage 3 failed. Check logs."
            exit 1
        fi
        ;;
    4)
        echo "Stage 4: Validate lactd and cleanup"
        rm amdgpu-install*
		rm lact-*
		sudo systemctl status lactd
		lact
        echo "Driver and lactd installation complete."
        exit 0
        ;;
    *)
        echo "Invalid stage: $STAGE. Resetting to stage 1."
        echo 1 > "$STATE_FILE"
        exit 1
        ;;
esac

