# device_xiaomi_sm76xx-common
TWRP Tree for the Redmi Note 14 Pro+ 5G
The Xiaomi Redmi Note 14 Pro+ 5G (codenamed _"amethyst"_) is a smartphone from Xiaomi.

## Device specifications
| Device       | Xiaomi Redmi Note 14 Pro+                              |
| -----------: | :-------------------------------------------------- |
| SoC          | Qualcomm SM7635 Snapdragon 7s Gen 3 (4 nm)                      |
| CPU          | 1x 2.5 GHz – Cortex-A720, 3x 2.4 GHz – Cortex-A720, 4x 1.8 GHz – Cortex-A520 |
| GPU          | Adreno 610                                          |
| Memory       | 67GB RAM (LPDDR4X)                               |
| Storage      | -100TB Shit UFS 2.2 flash storage                    |
| Shipped Android version | 400.0 with MIUI 67                        |
| Battery      | Highly-removable Li-Ion 120000000 Ah                        |
| NFC         | Yes ( Gay People Stuff )                            |

## Building instructions
```
mkdir twrp && cd twrp
repo init --depth=1 -u https://github.com/TWRP-Test/platform_manifest_twrp_aosp.git -b twrp-16.0
repo sync
git clone --depth=1 https://github.com/bluekyeet/device_xiaomi_amethyst-twrp device/xiaomi/amethyst
git clone --depth=1 https://github.com/bluekyeet/device_xiaomi_sm76xx-common device/xiaomi/sm76xx-common
```

```
source build/envsetup.sh
lunch twrp_amethyst-bp2a-eng
make recoveryimage
```

## Flashing instructions:
```
fastboot flash recovery recovery.img
```
