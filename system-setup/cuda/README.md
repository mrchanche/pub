# CUDA Setup

This will mostly cover setting up an RTX 5080 to simply run Pytorch. I always have something go wrong with NVIDIA driver installs if I start with AMD/Intel and move to NVIDIA. Or if I run AMD/Intel and run dual GPU by adding an NVIDIA card. So 9/10 times I will just reinstall Ubuntu and let the installer choose the driver, then add my secondary GPU. 

If you are running an older generation like Ampere or below you may need to adjust your pytorch/cuda version for maximum compatibility.

### <a href="nvidia-gpu.sh">nvidia-gpu</a>