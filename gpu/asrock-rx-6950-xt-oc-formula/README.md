# ASRock RX 6950 XT OC Formula

I don't typically use thermal pads anymore but I figured why not. Thermal putty is superior in every way just as products like PTM7950 or TR Helios V1 is superior to thermal pastes and even liquid metal in some cases for direct die cooling. You must test fit even after measuring and adjusting for compression of the pads.

### Thermal Pad Sizes

- VRAM: 2mm
- VRM: 1.5mm - 2mm
    - I have updated this after letting the card sit for a few days to compress the pads down, I measured out to what should be 1.5mm on the aft VRM but it definitely needs closer to 2mm to make good contact. 1.5mm made good contact with the VRM on the IO Shield side.
- Back Plate: 2.5mm

I looked all over for somewhere/someone who had all the thermal pad sizes listed for this card. I recently picked up a refurb unit from newegg (in 2025) and stripped the gpu down and was still waiting on thermal putty to ship in. I figured I would replace the pads since I have a stack of various sizes from my time thermal testing. But alas, no one has the pad sizes and locations listed so I bought out the Mitutoyo's and measured out every pad.

After correcting the pad sizes I have adjust the above info and the images below to reflect more correct pad thickness.

- Brand: ASRock
- GPU: RX 6950 XT
- Model: OC Formula

All of this should also apply to the RX 6900 XT formula. 

<img src="img\gpu.jpg">

**NOTE CAUTION NOTE CAUTION NOTE CAUTION**

The thermal pads on this gpu are very soft, not all thermal pads are the same. Some pads are almost a soft putty/clay like these and other are very stiff or even rubbery. This gpu requires softer pads. I typically replace with thermal putty but if you use a pad use something like a Thermal Grizzly or Artic TP-3 which are both very soft and will conform under pressure.

- Tools
    - PH1 driver
    - PH00 driver
    - I used a Mitutoyo 505-742J caliper to take measurements, this was zero'd out before checking

### Disassembly

While there are a good number of screws this GPU is one of the easier units to take down and put back together. There are only 2 screw head sizes and screw length does not change on the same area. Example, all backplate 'small' screws are the same and PH00, all 'large' backplate screws are PH1 and of the same length. It will be pretty hard to not put this back together correctly.

### Reassembly

This is trickier than most, **DO NOT** tighten IO shield and backplate screws down, you may install the cooler retention spring plate fully. But you will need to align the IO shield, backplate, cooler and fan shroud. Put all the parts together and only loose put in the screws, once they are all in and lined up loose, then tighten them down. If you have already put on the spring plate, which holds the majority of the pressure die to cooler then the rest should mostly line up. Just don't force anything. 

### Other Notes

When going blind into a new GPU I like to either replace pads with thermal putty like Jarapad/upsiren or Thermal Grizzly. In this specific GPU I measured out used compressed pads and adjusted up to the next logical size but the VRM seemed to be a little to thin. Supplementing with some thermal putty on top of pads is an easy/quick way to ensure good contact without having a perfect thickness/hardness of pad.

### Fan Replacements

If you want to replace a fan with the correct OC Formula stick on it, it will cost quite a bit. However these are 98mm ringed fans and not very common, you do see them used in other asrock products. If you were like me and bought a refurb unit, check fan rotation in multiple positions and angle as one of my fans had a bad bearing only audible in the vertical position. To replace a single fan it maybe $50 and up to $140 for all 3. At the time of this writing I was able to buy a correctly OC Formula branded 3 fan set for under $90.

- Part Number: 98MM CF1010H12S

### Thermal Pad Thickness

Measurements were taken in standard and converted to mm so ALL measurements below are in **mm**

**NOTE** Thickness' have been adjusted after post compression inspection.

<img src="img\front.jpg">
<img src="img\back.jpg">

### Notes and Measurements

<img src="img\mitutoyo.jpg">
<img src="img\notes.jpg">

### IO Side VRM Inspection

After a few days to compress 1.5mm was the right size for the VRM next to the IO shield.

<img src="img\iovrm.jpg">

### Die and VRAM Inspection

2mm pads work 100% on the VRAM and allow for full compression on the die with the phase change thermal interface. VRAM temps were also very low under load.

<img src="img\vramdie.jpg">

### Power side VRM Inspection

This was not making great contact across the entire strip for inductors or MOSFETs so stepping up a size would definitely correct this. I have adjust the sizing in this document to reflect that. I simply added some TG Advanced putty on top to bridge the load to the pads. 

<img src="img\badvrmcontact.jpg">