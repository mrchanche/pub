# Intel ARC Pro B50 16GB ECC

- 70w PCIe slot power only
- 16GB ECC VRAM Clamshell (VRAM on back/front of PCB)
- 2 slot SFF capable
- About 30% slower in theory than an ARC B580
    - This does not scale linearly but for ML performance and 1080p gaming is does track

I previously ran dual Pro B50's on day 1 launch but was plagued with weird software and fan issues. The fans would just cycle in/out of max speed non stop. I gave it about 2 months and we will give it another try.

On paper this should be a perfect GPU with decent ML performance and good enough 1080p gaming (RX 5700 XT perf).

- To Do
    - Measure pads
    - Take board pictures
    - Check what TIM is on die
    - Replace pads with putty if needed
    - Document VRM for practice
    - Determine if fan control is now working
    - Get idle temp/power consumption
    - Get onload temp/power consumption
    - Video teardown, not sure where to put this

Previous xpu benchmark

- Arc Pro B50 16GB - Weird software/driver and fan issues
    - Elapsed time: 94.30 seconds
- Arc B580 12GB - Ubuntu 25.04 - Intel XPU IPEX Docker Container - 2.8.10-xpu
    - Elapsed time: 58.34 seconds

47.1174% Delta in performance, need to check/validate apples to apples in linux/container.