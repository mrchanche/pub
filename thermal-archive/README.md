### Thermal Testing Archive

I ran a website and youtube archiving thousands of hours of my own thermal testing. I no longer invest time in testing as there are a large number of channels and groups doing this now but I wanted somewhere to park my data.

# GPU Thermal Density

Looking at wattage is not a great indicator of how easy or hard it will be to cool a GPU. 300 watts on a small die is nearly impossible to cool vs 300 watts on a large die if the coolers are the same size. I will often use "Watts Per mm Squared" as a good starting point to understand what type of cooling performance a GPU die will require and in a lot of cases which thermal paste/interface I will plan on using.

Watts Per mm Squared = TDP / Die Area mm

As you approach 0.8 Watts Per mm Squared high performance coolers are required. Over 1.0 Watts Per mm Squared is typically what you see in overclocked power limit raised profiles.

| GPU Die          | Die Area mm | TDP Watts | Watts Per mm Squared |
|------------------|-------------|-----------|----------------------|
| RTX 2060         | 445         | 160       | 0.3595               |
| GTX 1650         | 200         | 075       | 0.3750               |
| RTX 2060 SUPER   | 445         | 175       | 0.3932               |
| RTX 2070         | 445         | 175       | 0.3932               |
| RTX 2070 SUPER   | 545         | 215       | 0.3944               |
| RTX 2080         | 545         | 215       | 0.3944               |
| GTX 1660         | 284         | 120       | 0.4225               |
| GTX 1660 Ti      | 284         | 120       | 0.4225               |
| ARC A580         | 406         | 175       | 0.4310               |
| GTX 1660 SUPER   | 284         | 125       | 0.4401               |
| RTX 3060 Ti      | 392         | 175       | 0.4464               |
| RTX 2080 SUPER   | 545         | 250       | 0.4587               |
| R9 FURY          | 596         | 275       | 0.4614               |
| RTX 3050         | 276         | 130       | 0.4710               |
| GTX 1070         | 314         | 150       | 0.4777               |
| RX 7900 GRE      | 529         | 260       | 0.4914               |
| RTX 3080         | 628         | 320       | 0.5095               |
| GTX 1080 Ti      | 471         | 250       | 0.5307               |
| Titan Xp         | 471         | 250       | 0.5307               |
| ARC A750         | 406         | 225       | 0.5541               |
| ARC A770         | 406         | 225       | 0.5541               |
| RX 6600          | 237         | 132       | 0.5569               |
| RTX 3080 Ti      | 628         | 350       | 0.5573               |
| RTX 3090         | 628         | 350       | 0.5573               |
| RTX 3070         | 392         | 220       | 0.5612               |
| RX 7900 XT       | 529         | 300       | 0.5671               |
| GTX 1050         | 132         | 075       | 0.5681               |
| GTX 1050 Ti      | 132         | 075       | 0.5681               |
| GTX 1080         | 314         | 180       | 0.5732               |
| Vega 64          | 495         | 295       | 0.5959               |
| GTX 1060         | 200         | 120       | 0.6000               |
| RTX 3060         | 276         | 170       | 0.6159               |
| RX 570           | 232         | 150       | 0.6465               |
| GTX Titan Z      | 561         | 375       | 0.6684               |
| RX 7900 XTX      | 529         | 355       | 0.6710               |
| RTX 4070         | 294         | 200       | 0.6802               |
| RX 6700 XT       | 335         | 230       | 0.6865               |
| ARC B580         | 272         | 190       | 0.6985               |
| RX 7700 XT       | 346         | 245       | 0.7080               |
| RTX 3090 Ti      | 628         | 450       | 0.7165               |
| RTX 4060         | 159         | 115       | 0.7232               |
| RTX 4090         | 609         | 450       | 0.7389               |
| RTX 3070 Ti      | 392         | 290       | 0.7397               |
| RTX 4070 SUPER   | 294         | 220       | 0.7482               |
| RTX 4070 Ti SUPER| 379         | 285       | 0.7519               |
| RX 7800 XT       | 346         | 263       | 0.7601               |
| RX 580           | 232         | 185       | 0.7974               |
| RX 7600          | 204         | 165       | 0.8088               |
| RTX 4080         | 379         | 320       | 0.8443               |
| RTX 4080 SUPER   | 379         | 320       | 0.8443               |
| RTX 4060 Ti      | 188         | 160       | 0.8510               |
| RX 5700 XT       | 251         | 225       | 0.8964               |
| RX 5700 XT       | 251         | 225       | 0.8964               |
| RX 7600 XT       | 204         | 190       | 0.9313               |
| RTX 4070 Ti      | 294         | 285       | 0.9693               |

# 220w | 0.8764 watts per mm sq

| Manufacturer   | Thermal Interface                   | Wattage | Die mm/sq | Watt mm/sq | GPU Over Ambient c | Hotspot Over Ambient c | Sum Over Ambient c | Testing Link       |
|----------------|-------------------------------------|---------|-----------|------------|--------------------|------------------------|--------------------|------------------|
| Thermal Grizzly  | Thermal Grizzly Conductonaut        | 220     | 251       | 0.8764     | 43.7               | 58.7                   | 102.4              |      |
| Thermal Grizzly  | Thermal Grizzly Conductonaut Extreme | 220     | 251       | 0.8764     | 45.2               | 58.2                   | 103.4              |      |
| be quiet!      | be quiet! DC2 Pro                  | 220     | 251       | 0.8764     | 46.6               | 59.6                   | 106.2              |      |
| Meta Online    | Meta Online Liquid Metal            | 220     | 251       | 0.8764     | 46.7               | 60.7                   | 107.4              |      |
| Upsiren        | Upsiren LMTG100                    | 220     | 251       | 0.8764     | 47                 | 61                     | 108                |      |
| Honeywell      | Honeywell PTM 7950                 | 220     | 251       | 0.8764     | 46.7               | 61.7                   | 108.4              |      |
| Thermal Grizzly  | Thermal Grizzly Kryosheet 38x38   | 220     | 251       | 0.8764     | 46.2               | 62.2                   | 108.4              |      |
| Thermalright   | Thermalright Heilos V2            | 220     | 251       | 0.8764     | 47.2               | 61.2                   | 108.4              |      |
| Thermal Grizzly  | Thermal Grizzly Kryonaut Extreme   | 220     | 251       | 0.8764     | 45.7               | 62.7                   | 108.4              |      |
| Thermal Grizzly  | Thermal Grizzly Hydronaut        | 220     | 251       | 0.8764     | 46.3               | 62.3                   | 108.6              |      |
| Thermalright   | Thermalright Silverking           | 220     | 251       | 0.8764     | 45.8               | 62.8                   | 108.6              |      |
| Thermal Grizzly  | Forbidden Stack - Kryosheet + Conductonaut Extreme | 220 | 251       | 0.8764     | 47.2               | 62.2                   | 109.4              |      |
| Thermal Grizzly  | Thermal Grizzly Phasesheet        | 220     | 251       | 0.8764     | 47                 | 63                     | 110                |      |
| Bitspower      | Bitspower TP-1                    | 220     | 251       | 0.8764     | 47.6               | 62.6                   | 110.2              |      |
| Honeywell      | Honeywell PTM7950-SP               | 220     | 251       | 0.8764     | 47.6               | 62.6                   | 110.2              |      |
| Thermal Grizzly  | Thermal Grizzly Kryonaut          | 220     | 251       | 0.8764     | 47.7               | 62.7                   | 110.4              |      |
| Honeywell      | Honeywell PTM7958-SP               | 220     | 251       | 0.8764     | 47.4               | 63.4                   | 110.8              |      |
| Iceberg        | Iceberg Fuzeice Plus              | 220     | 251       | 0.8764     | 47.5               | 63.5                   | 111                |      |
| Arctic Silver  | Arctic Silver 5                     | 220     | 251       | 0.8764     | 47.6               | 63.6                   | 111.2              |      |
| Noctua         | Noctua NT-H1                      | 220     | 251       | 0.8764     | 47.7               | 63.7                   | 111.4              |      |
| Noctua         | Noctua NT-H2                      | 220     | 251       | 0.8764     | 47.8               | 63.8                   | 111.6              |      |
| Sub Zero       | Sub Zero C13                       | 220     | 251       | 0.8764     | 46.8               | 64.8                   | 111.6              |      |
| Thermalright   | Thermalright Heilos                | 220     | 251       | 0.8764     | 47.3               | 64.3                   | 111.6              |      |
| Tishric        | Tishric T12-3                      | 220     | 251       | 0.8764     | 46.8               | 64.8                   | 111.6              |      |
| Cooler Master  | Cooler Master CryoFuze             | 220     | 251       | 0.8764     | 48.9               | 62.9                   | 111.8              |      |
| Iceberg        | Iceberg Fuzeice                   | 220     | 251       | 0.8764     | 48.6               | 63.6                   | 112.2              |      |
| Halnziye       | Halnziye HY-P15                   | 220     | 251       | 0.8764     | 48.2               | 64.2                   | 112.4              |      |
| Kooling Monster| Kooling Monster KOLD-01           | 220     | 251       | 0.8764     | 47.8               | 64.8                   | 112.6              |      |
| Thermalright   | Thermalright TF-9                 | 220     | 251       | 0.8764     | 47.5               | 65.5                   | 113                |      |
| GD             | GD-2                              | 220     | 251       | 0.8764     | 48.1               | 65.1                   | 113.2              |      |
| Thermalright   | Thermalright TF-7                 | 220     | 251       | 0.8764     | 48.6               | 64.6                   | 113.2              |      |
| Wovibo         | Wovibo WB-4                       | 220     | 251       | 0.8764     | 47.6               | 65.6                   | 113.2              |      |
| Kingpin Kooling| Kingpin Kooling KPx                | 220     | 251       | 0.8764     | 48.2               | 65.2                   | 113.4              |      |
| Polartherm     | Polartherm X-10                    | 220     | 251       | 0.8764     | 48.2               | 65.2                   | 113.4              |      |
| Nuomi          | Nuomi TP-133                      | 220     | 251       | 0.8764     | 48.8               | 64.8                   | 113.6              |      |
| Adegrees       | Adegrees NB-4                       | 220     | 251       | 0.8764     | 48.3               | 65.3                   | 113.6              |      |
| Nuomi          | Nuomi BS-139                      | 220     | 251       | 0.8764     | 48.9               | 64.9                   | 113.8              |      |
| Arctic         | Arctic MX-6                       | 220     | 251       | 0.8764     | 48.1               | 66.1                   | 114.2              |      |
| Nuomi          | Nuomi SYY-157                     | 220     | 251       | 0.8764     | 49.1               | 65.1                   | 114.2              |      |
| Upsiren        | Upsiren UTG-X                      | 220     | 251       | 0.8764     | 49.1               | 65.1                   | 114.2              |      |
| FEHONDA      | FEHONDA TR50L                    | 220     | 251       | 0.8764     | 47.4               | 67.4                   | 114.8              |      |
| Gelid          | Gelid GC-Extreme                  | 220     | 251       | 0.8764     | 48.4               | 66.4                   | 114.8              |      |
| Halnziye       | Halnziye HY883                    | 220     | 251       | 0.8764     | 47.9               | 66.9                   | 114.8              |      |
| Halnziye       | Halnziye HY-P11                   | 220     | 251       | 0.8764     | 51.5               | 63.5                   | 115                |      |
| be quiet!      | be quiet! DC2                     | 220     | 251       | 0.8764     | 48.2               | 67.2                   | 115.4              |      |
| Halnziye       | Halnziye HY-P13                   | 220     | 251       | 0.8764     | 49.9               | 65.9                   | 115.8              |      |
| Halnziye       | Halnziye HY-P16                   | 220     | 251       | 0.8764     | 48.9               | 66.9                   | 115.8              |      |
| LK             | LK-17                             | 220     | 251       | 0.8764     | 48.9               | 66.9                   | 115.8              |      |
| Polartherm     | Polartherm X-8                    | 220     | 251       | 0.8764     | 48.9               | 66.9                   | 115.8              |      |
| Thermalright   | Thermalright TF8 EX               | 220     | 251       | 0.8764     | 49.4               | 66.4                   | 115.8              |      |
| Thermalright   | Thermalright TFX                  | 220     | 251       | 0.8764     | 49.6               | 66.6                   | 116.2              |      |
| Halnziye       | Halnziye HY880                    | 220     | 251       | 0.8764     | 49.2               | 67.2                   | 116.4              |      |
| Halnziye       | Halnziye HY881                    | 220     | 251       | 0.8764     | 48.9               | 67.9                   | 116.8              |      |
| Arctic         | Arctic MX-4                       | 220     | 251       | 0.8764     | 49.5               | 67.5                   | 117                |      |
| Thermalright   | Thermalright TF-8                 | 220     | 251       | 0.8764     | 49.5               | 67.5                   | 117                |      |
| Halnziye       | Halnziye HY-P14                   | 220     | 251       | 0.8764     | 48.6               | 68.6                   | 117.2              |      |
| Sub Zero       | Sub Zero C14                      | 220     | 251       | 0.8764     | 50.1               | 67.1                   | 117.2              |      |
| Sub Zero       | Sub Zero C15                      | 220     | 251       | 0.8764     | 50.1               | 67.1                   | 117.2              |      |
| Thermalright   | Thermalright TF4                  | 220     | 251       | 0.8764     | 49.6               | 67.6                   | 117.2              |      |
| Snowman        | Snowman MTG10                     | 220     | 251       | 0.8764     | 49.2               | 68.2                   | 117.4              |      |
| Cool Moon      | Cool Moon MT8                      | 220     | 251       | 0.8764     | 49.8               | 67.8                   | 117.6              |      |
| GD             | GD900                             | 220     | 251       | 0.8764     | 49.8               | 67.8                   | 117.6              |      |
| LK             | LK-15                             | 220     | 251       | 0.8764     | 50.5               | 67.5                   | 118                |      |
| MJTech         | MJTech M12                        | 220     | 251       | 0.8764     | 51.9               | 71.9                   | 123.8              |      |
| Thermal Grizzly| Thermal Grizzly Aeronaut          | 220     | 251       | 0.8764     | 52                 | 72                     | 124                |      |

# 260w | 1.0358 watts per mm sq

| Manufacturer    | Thermal Interface                                | Wattage | Die mm/sq | Watt mm/sq | GPU Over Ambient c | Hotspot Over Ambient c | Sum Over Ambient c | Testing Link                                                     |
|-----------------|--------------------------------------------------|---------|-----------|------------|--------------------|------------------------|--------------------|------------------------------------------------------------------|
| Thermal Grizzly | Thermal Grizzly Conductonaut                     | 260     | 251       | 1.0358     | 44.5               | 62.5                   | 107                |                       |
| Thermal Grizzly | Thermal Grizzly Conductonaut Extreme             | 260     | 251       | 1.0358     | 45.1               | 62.1                   | 107.2              |                       |
| Upsiren         | Upsiren LMTG100                                  | 260     | 251       | 1.0358     | 45.8               | 63.8                   | 109.6              |                       |
| be quiet!       | be quiet! DC2 Pro                                | 260     | 251       | 1.0358     | 46.5               | 65.5                   | 112                |                       |
| Thermal Grizzly | Thermal Grizzly Kryosheet 38x38                  | 260     | 251       | 1.0358     | 46.1               | 66.1                   | 112.2              |               |
| Thermalright    | Thermalright Heilos V2                           | 260     | 251       | 1.0358     | 47.2               | 65.2                   | 112.4              |          |
| Thermal Grizzly | Thermal Grizzly Kryonaut Extreme                 | 260     | 251       | 1.0358     | 45.6               | 67.6                   | 113.2              |                       |
| Thermal Grizzly | Forbidden Stack - Kryosheet + Conductonaut Extreme | 260     | 251       | 1.0358     | 47.2               | 66.2                   | 113.4              |          |
| Thermalright    | Thermalright Heilos                              | 260     | 251       | 1.0358     | 46.3               | 67.3                   | 113.6              |                       |
| Thermalright    | Thermalright Silverking                          | 260     | 251       | 1.0358     | 45.8               | 67.8                   | 113.6              |                       |
| Meta Online     | Meta Online Liquid Metal                         | 260     | 251       | 1.0358     | 47.3               | 66.3                   | 113.6              |                       |
| Thermal Grizzly | Thermal Grizzly Phasesheet                       | 260     | 251       | 1.0358     | 46.5               | 67.5                   | 114                |                       |
| Iceberg         | Iceberg Fuzeice Plus                             | 260     | 251       | 1.0358     | 47.6               | 68.6                   | 116.2              |                       |
| Thermalright    | Thermalright TF-7                                | 260     | 251       | 1.0358     | 47.6               | 68.6                   | 116.2              |                       |
| Thermalright    | Thermalright TF-9                                | 260     | 251       | 1.0358     | 47.1               | 69.1                   | 116.2              |                       |
| Honeywell       | Honeywell PTM 7950                               | 260     | 251       | 1.0358     | 48.8               | 67.8                   | 116.6              |                       |
| Cooler Master   | Cooler Master CryoFuze                           | 260     | 251       | 1.0358     | 47.9               | 68.9                   | 116.8              |                       |
| Honeywell       | Honeywell PTM7958-SP                             | 260     | 251       | 1.0358     | 48.4               | 69.4                   | 117.8              |                       |
| GD              | GD-2                                           | 260     | 251       | 1.0358     | 48.1               | 70.1                   | 118.2              |                       |
| Polartherm    | Polartherm X-10                                  | 260     | 251       | 1.0358     | 48.1               | 70.1                   | 118.2              |          |
| Wovibo          | Wovibo WB-4                                     | 260     | 251       | 1.0358     | 47.6               | 70.6                   | 118.2              |                       |
| Honeywell       | Honeywell PTM7950-SP                             | 260     | 251       | 1.0358     | 48.7               | 69.7                   | 118.4              |                       |
| Halnziye        | Halnziye HY-P11                                  | 260     | 251       | 1.0358     | 51.8               | 66.8                   | 118.6              |                       |
| Polartherm    | Polartherm X-8                                   | 260     | 251       | 1.0358     | 47.8               | 70.8                   | 118.6              |          |
| Adegrees        | Adegrees NB-4                                    | 260     | 251       | 1.0358     | 48.3               | 70.3                   | 118.6              |            |
| Thermal Grizzly | Thermal Grizzly Kryonaut                         | 260     | 251       | 1.0358     | 48.9               | 69.9                   | 118.8              |                       |
| Upsiren         | Upsiren UTG-X                                    | 260     | 251       | 1.0358     | 48.9               | 69.9                   | 118.8              |                       |
| Noctua          | Noctua NT-H1                                     | 260     | 251       | 1.0358     | 50                 | 69                     | 119                |                       |
| Nuomi           | Nuomi SYY-157                                    | 260     | 251       | 1.0358     | 49                 | 70                     | 119                |                       |
| Thermal Grizzly | Thermal Grizzly Hydronaut                        | 260     | 251       | 1.0358     | 49.6               | 69.6                   | 119.2              |                       |
| Halnziye        | Halnziye HY-P15                                  | 260     | 251       | 1.0358     | 49.2               | 70.2                   | 119.4              |                       |
| Sub Zero        | Sub Zero C13                                     | 260     | 251       | 1.0358     | 48.2               | 71.2                   | 119.4              |                       |
| Iceberg         | Iceberg Fuzeice                                  | 260     | 251       | 1.0358     | 48.8               | 70.8                   | 119.6              |                       |
| Tishric         | Tishric T12-3                                    | 260     | 251       | 1.0358     | 47.8               | 71.8                   | 119.6              |          |
| Bitspower       | Bitspower TP-1                                   | 260     | 251       | 1.0358     | 49.9               | 69.9                   | 119.8              |                       |
| Kooling Monster | Kooling Monster KOLD-01                          | 260     | 251       | 1.0358     | 48.9               | 70.9                   | 119.8              |                       |
| Sub Zero        | Sub Zero C15                                     | 260     | 251       | 1.0358     | 48.9               | 70.9                   | 119.8              |                       |
| Nuomi           | Nuomi TP-133                                     | 260     | 251       | 1.0358     | 49.5               | 70.5                   | 120                |                       |
| Kingpin Kooling | Kingpin Kooling KPx                              | 260     | 251       | 1.0358     | 49.1               | 71.1                   | 120.2              |                       |
| Nuomi           | Nuomi BS-139                                     | 260     | 251       | 1.0358     | 50.1               | 70.1                   | 120.2              |                       |
| Noctua          | Noctua NT-H2                                     | 260     | 251       | 1.0358     | 50.8               | 69.8                   | 120.6              |                       |
| be quiet!       | be quiet! DC2                                    | 260     | 251       | 1.0358     | 48.8               | 71.8                   | 120.6              |                       |
| Thermalright    | Thermalright TFX                                 | 260     | 251       | 1.0358     | 49.3               | 71.3                   | 120.6              |                       |
| Thermalright    | Thermalright TF8 EX                              | 260     | 251       | 1.0358     | 49.4               | 71.4                   | 120.8              |                       |
| Arctic          | Arctic MX-4                                      | 260     | 251       | 1.0358     | 49.7               | 71.7                   | 121.4              |                       |
| Arctic          | Arctic MX-6                                      | 260     | 251       | 1.0358     | 49.8               | 71.8                   | 121.6              |                       |
| Arctic Silver   | Arctic Silver 5                                  | 260     | 251       | 1.0358     | 48.8               | 72.8                   | 121.6              |                       |
| Halnziye        | Halnziye HY-P14                                  | 260     | 251       | 1.0358     | 48.5               | 73.5                   | 122                |                       |
| Sub Zero        | Sub Zero C14                                     | 260     | 251       | 1.0358     | 49.6               | 72.6                   | 122.2              |                       |
| FEHONDA         | FEHONDA TR50L                                    | 260     | 251       | 1.0358     | 48.2               | 74.2                   | 122.4              |                       |
| LK              | LK-15                                          | 260     | 251       | 1.0358     | 50                 | 73                     | 123                |          |
| Thermalright    | Thermalright TF-8                                | 260     | 251       | 1.0358     | 50.1               | 73.1                   | 123.2              |                       |
| Halnziye        | Halnziye HY-P13                                  | 260     | 251       | 1.0358     | 50.9               | 72.9                   | 123.8              |                       |
| Halnziye        | Halnziye HY883                                   | 260     | 251       | 1.0358     | 50.9               | 72.9                   | 123.8              |                       |
| LK              | LK-17                                          | 260     | 251       | 1.0358     | 49.9               | 73.9                   | 123.8              |                       |
| Thermalright    | Thermalright TF4                                 | 260     | 251       | 1.0358     | 50.5               | 73.5                   | 124                |                |
| Halnziye        | Halnziye HY880                                   | 260     | 251       | 1.0358     | 50.1               | 74.1                   | 124.2              |                       |
| Halnziye        | Halnziye HY-P16                                  | 260     | 251       | 1.0358     | 49.9               | 74.9                   | 124.8              |                       |
| GD              | GD900                                          | 260     | 251       | 1.0358     | 50                 | 75                     | 125                |          |
| Halnziye        | Halnziye HY881                                   | 260     | 251       | 1.0358     | 50                 | 75                     | 125                |                       |
| Cool Moon       | Cool Moon MT8                                    | 260     | 251       | 1.0358     | 50.8               | 74.8                   | 125.6              |                       |
| Gelid           | Gelid GC-Extreme                                 | 260     | 251       | 1.0358     | 52                 | 74                     | 126                |                       |
| Snowman         | Snowman MTG10                                    | 260     | 251       | 1.0358     | 51.3               | 75.3                   | 126.6              |                       |
| MJTech          | MJTech M12                                       | 260     | 251       | 1.0358     | 52.9               | 77.9                   | 130.8              |                       |
| Thermal Grizzly | Thermal Grizzly Aeronaut                         | 260     | 251       | 1.0358     | 54                 | 80                     | 134                |                       |

# 300w | 1.1952 watts per mm sq

| Manufacturer    | Thermal Interface                                | Wattage | Die mm/sq | Watt mm/sq | GPU Over Ambient c | Hotspot Over Ambient c | Sum Over Ambient c | Testing Link                                                     |
|-----------------|--------------------------------------------------|---------|-----------|------------|--------------------|------------------------|--------------------|------------------------------------------------------------------|
| Thermal Grizzly | Thermal Grizzly Conductonaut                     | 300     | 251       | 1.1952     | 47.1               | 71.1                   | 118.2              |                       |
| Thermal Grizzly | Thermal Grizzly Conductonaut Extreme             | 300     | 251       | 1.1952     | 47.7               | 70.7                   | 118.4              |                       |
| Upsiren         | Upsiren LMTG100                                  | 300     | 251       | 1.1952     | 50.7               | 72.7                   | 123.4              |                       |
| Thermal Grizzly | Forbidden Stack - Kryosheet + Conductonaut Extreme | 300     | 251       | 1.1952     | 49.8               | 73.8                   | 123.6              |          |
| be quiet!       | be quiet! DC2 Pro                                | 300     | 251       | 1.1952     | 50.5               | 73.5                   | 124                |                       |
| Thermalright    | Thermalright Heilos                              | 300     | 251       | 1.1952     | 49.5               | 74.5                   | 124                |                       |
| Meta Online     | Meta Online Liquid Metal                         | 300     | 251       | 1.1952     | 51.3               | 73.3                   | 124.6              |                       |
| Thermalright    | Thermalright Heilos V2                           | 300     | 251       | 1.1952     | 51.2               | 74.2                   | 125.4              |          |
| Thermalright    | Thermalright Silverking                          | 300     | 251       | 1.1952     | 49.8               | 75.8                   | 125.6              |                       |
| Thermal Grizzly | Thermal Grizzly Phasesheet                       | 300     | 251       | 1.1952     | 50.2               | 76.2                   | 126.4              |                       |
| Thermal Grizzly | Thermal Grizzly Kryosheet 38x38                  | 300     | 251       | 1.1952     | 51.9               | 74.9                   | 126.8              |               |
| Noctua          | Noctua NT-H1                                     | 300     | 251       | 1.1952     | 51.9               | 75.9                   | 127.8              |                       |
| Thermal Grizzly | Thermal Grizzly Kryonaut Extreme                 | 300     | 251       | 1.1952     | 51.8               | 76.8                   | 128.6              |                       |
| Polartherm    | Polartherm X-10                                  | 300     | 251       | 1.1952     | 50.8               | 77.8                   | 128.6              |          |
| Nuomi           | Nuomi TP-133                                     | 300     | 251       | 1.1952     | 51.5               | 77.5                   | 129                |                       |
| Cooler Master   | Cooler Master CryoFuze                           | 300     | 251       | 1.1952     | 52.8               | 76.8                   | 129.6              |                       |
| Iceberg         | Iceberg Fuzeice Plus                             | 300     | 251       | 1.1952     | 52.8               | 76.8                   | 129.6              |                       |
| Thermalright    | Thermalright TF-7                                | 300     | 251       | 1.1952     | 52.8               | 76.8                   | 129.6              |                       |
| Wovibo          | Wovibo WB-4                                      | 300     | 251       | 1.1952     | 51.5               | 78.5                   | 130                |                       |
| Honeywell       | Honeywell PTM 7950                               | 300     | 251       | 1.1952     | 52.7               | 77.7                   | 130.4              |                       |
| Arctic          | Arctic MX-4                                      | 300     | 251       | 1.1952     | 52.8               | 77.8                   | 130.6              |                       |
| Arctic          | Arctic MX-6                                      | 300     | 251       | 1.1952     | 51.8               | 78.8                   | 130.6              |                       |
| Bitspower       | Bitspower TP-1                                   | 300     | 251       | 1.1952     | 52.8               | 77.8                   | 130.6              |                       |
| Halnziye        | Halnziye HY-P11                                  | 300     | 251       | 1.1952     | 55.8               | 74.8                   | 130.6              |                       |
| Noctua          | Noctua NT-H2                                     | 300     | 251       | 1.1952     | 53.8               | 76.8                   | 130.6              |                       |
| Thermal Grizzly | Thermal Grizzly Kryonaut                         | 300     | 251       | 1.1952     | 52.8               | 77.8                   | 130.6              |                       |
| Nuomi           | Nuomi BS-139                                     | 300     | 251       | 1.1952     | 52.9               | 77.9                   | 130.8              |                       |
| Thermalright    | Thermalright TF-9                                | 300     | 251       | 1.1952     | 52                 | 79                     | 131                |                       |
| Thermal Grizzly | Thermal Grizzly Hydronaut                        | 300     | 251       | 1.1952     | 53.6               | 77.6                   | 131.2              |                       |
| Halnziye        | Halnziye HY-P15                                  | 300     | 251       | 1.1952     | 53.2               | 78.2                   | 131.4              |                       |
| Honeywell       | Honeywell PTM7950-SP                             | 300     | 251       | 1.1952     | 52.8               | 78.8                   | 131.6              |                       |
| Kooling Monster | Kooling Monster KOLD-01                          | 300     | 251       | 1.1952     | 52.8               | 78.8                   | 131.6              |                       |
| be quiet!       | be quiet! DC2                                    | 300     | 251       | 1.1952     | 51.8               | 79.8                   | 131.6              |                       |
| Adegrees        | Adegrees NB-4                                    | 300     | 251       | 1.1952     | 52.3               | 79.3                   | 131.6              |            |
| Honeywell       | Honeywell PTM7958-SP                             | 300     | 251       | 1.1952     | 52.4               | 79.4                   | 131.8              |                       |
| Sub Zero        | Sub Zero C15                                     | 300     | 251       | 1.1952     | 52.9               | 78.9                   | 131.8              |                       |
| Sub Zero        | Sub Zero C13                                     | 300     | 251       | 1.1952     | 52.3               | 80.3                   | 132.6              |                       |
| Tishric         | Tishric T12-3                                    | 300     | 251       | 1.1952     | 52.8               | 79.8                   | 132.6              |          |
| Nuomi           | Nuomi SYY-157                                    | 300     | 251       | 1.1952     | 54                 | 79                     | 133                |                       |
| Upsiren         | Upsiren UTG-X                                    | 300     | 251       | 1.1952     | 54                 | 79                     | 133                |                       |
| GD              | GD-2                                           | 300     | 251       | 1.1952     | 53.1               | 80.1                   | 133.2              |                       |
| Iceberg         | Iceberg Fuzeice                                  | 300     | 251       | 1.1952     | 53.8               | 79.8                   | 133.6              |                       |
| Halnziye        | Halnziye HY883                                   | 300     | 251       | 1.1952     | 53.9               | 79.9                   | 133.8              |                       |
| Kingpin Kooling | Kingpin Kooling KPx                              | 300     | 251       | 1.1952     | 54                 | 80                     | 134                |                       |
| Polartherm    | Polartherm X-8                                   | 300     | 251       | 1.1952     | 53.6               | 80.6                   | 134.2              |          |
| Thermalright    | Thermalright TF8 EX                              | 300     | 251       | 1.1952     | 54.1               | 80.1                   | 134.2              |                       |
| LK              | LK-15                                          | 300     | 251       | 1.1952     | 53.7               | 80.7                   | 134.4              |          |
| Thermalright    | Thermalright TFX                                 | 300     | 251       | 1.1952     | 53.2               | 81.2                   | 134.4              |                       |
| Arctic Silver   | Arctic Silver 5                                  | 300     | 251       | 1.1952     | 52.9               | 81.9                   | 134.8              |                       |
| Halnziye        | Halnziye HY-P14                                  | 300     | 251       | 1.1952     | 52.5               | 82.5                   | 135                |                       |
| Halnziye        | Halnziye HY-P13                                  | 300     | 251       | 1.1952     | 54.8               | 80.8                   | 135.6              |                       |
| LK              | LK-17                                          | 300     | 251       | 1.1952     | 53.9               | 81.9                   | 135.8              |                       |
| Thermalright    | Thermalright TF-8                                | 300     | 251       | 1.1952     | 54.1               | 82.1                   | 136.2              |                       |
| Sub Zero        | Sub Zero C14                                     | 300     | 251       | 1.1952     | 54.7               | 81.7                   | 136.4              |                       |
| Halnziye        | Halnziye HY-P16                                  | 300     | 251       | 1.1952     | 53.9               | 82.9                   | 136.8              |                       |
| FEHONDA         | FEHONDA TR50L                                    | 300     | 251       | 1.1952     | 53.1               | 84.1                   | 137.2              |                       |
| Thermalright    | Thermalright TF4                                 | 300     | 251       | 1.1952     | 54.1               | 83.1                   | 137.2              |                |
| Halnziye        | Halnziye HY881                                   | 300     | 251       | 1.1952     | 54.1               | 84.1                   | 138.2              |                       |
| Halnziye        | Halnziye HY880                                   | 300     | 251       | 1.1952     | 54.2               | 84.2                   | 138.4              |                       |
| Cool Moon       | Cool Moon MT8                                    | 300     | 251       | 1.1952     | 54.8               | 83.8                   | 138.6              |                       |
| GD              | GD-2                                           | 300     | 251       | 1.1952     | 53.9               | 84.9                   | 138.8              |          |
| Gelid           | Gelid GC-Extreme                                 | 300     | 251       | 1.1952     | 55.1               | 84.1                   | 139.2              |                       |
| Snowman         | Snowman MTG10                                    | 300     | 251       | 1.1952     | 55.3               | 84.3                   | 139.6              |                       |
| MJTech          | MJTech M12                                       | 300     | 251       | 1.1952     | 56.9               | 86.9                   | 143.8              |                       |
| Thermal Grizzly | Thermal Grizzly Aeronaut                         | 300     | 251       | 1.1952     | 57.9               | 87.9                   | 145.8              |                       |

