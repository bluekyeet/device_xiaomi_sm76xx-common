# device_xiaomi_sm76xx-common
TWRP Tree for the Redmi Note 14 Pro+ 5G
The Xiaomi Redmi Note 14 Pro+ 5G (codenamed _"amethyst"_) is a smartphone from Xiaomi.

## Device specifications
| Device       | Xiaomi Redmi Note 14 Pro+                              |
| -----------: | :-------------------------------------------------- |
| SoC          | Qualcomm SM7635 Snapdragon 7s Gen 3 (4 nm)                      |
| CPU          | 1x 2.5 GHz – Cortex-A720, 3x 2.4 GHz – Cortex-A720, 4x 1.8 GHz – Cortex-A520 |
| GPU          | Adreno 810                                          |
| Memory       | 8/12/16GB RAM (LPDDR4X/LPDDR5)                               |
| Storage      | 128/256/512GB UFS 2.2/3.1 flash storage                    |
| Shipped Android version | Android 14 with HyperOS 1                        |
| Battery      | Highly-removable Li-Ion 5110/6200mAh                        |
| NFC         | Yes ( Market/region dependent )                            |

## Building instructions
```
mkdir twrp && cd twrp
repo init --depth=1 -u https://github.com/TWRP-Test/platform_manifest_twrp_aosp.git -b twrp-16.0
repo sync
git clone --depth=1 https://github.com/bluekyeet/device_xiaomi_sm76xx-common device/xiaomi/sm7635
```

```
source build/envsetup.sh
lunch twrp_sm7635-bp2a-eng
make recoveryimage
```

## Flashing instructions:
```
fastboot flash recovery recovery.img
```
