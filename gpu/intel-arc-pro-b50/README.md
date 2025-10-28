# Intel ARC Pro B50 16GB ECC

- 70w PCIe slot power only
- 16GB ECC VRAM Clamshell (VRAM on back/front of PCB)
- 2 slot SFF capable
- About 30% slower in theory than an ARC B580
    - This does not scale linearly but for ML performance and 1080p gaming is does track

I previously ran dual Pro B50's on day 1 launch but was plagued with weird software and fan issues. The fans would just cycle in/out of max speed non stop. I gave it about 2 months and we will give it another try.

**Update:** Firmware fan control is working just fine, the gpu is completely silent running. 

I have seen some reviews where people complain that you need to take of the backplate and ultimiately remove the 'tamper' sticker to swap the IO shield between full-size and sff. This is not the case, you just need to review the 2 IO shield screws and the 4 backplate screws on the IO side. The shield will slip right out without needing to bend or fiddle with anything. 

One thing I do like better about the Pro B50 over the much more powerful and cheaper B580 is that the idle temps are much lower. The B580 has 0-rpm fan in firmware which causes the GPU to run hot in linux where there is no obvious fan control. The Pro B50 will always spin a minimum of around 1100 rpm which keeps the GPU in the high 30's to low 40's c. 

I will eventually pull the GPU apart and measure pads/verify the TIM etc... but for now I'm just going to try to live with it and see how it goes.

### IO Shield Screws

<img src="img\screws.jpg">

<img src="img\io.jpg">

### GPU Is Tiny

<img src="img\tiny.jpg">