Realme C11/C12/C15 Device Tree - RMX2185/RMX2189/RMX2180
================================================================


Basic   | Spec Sheet
-------:|:-------------------------
CPU     | Octa-core (4x2.3 GHz Cortex-A53 & 4x1.8 GHz Cortex-A53)
Chipset | MediaTek Helio G35 (12 nm)
GPU     | PowerVR GE8320
Memory  | 2/3/4 GB
Shipped Android Version | Android 10, realme UI 1.0 
Storage | 32/64 GB (eMMC type)
MicroSD | Up to 512 GB 
Battery | Li-Po 5000 mAh (RMX2185)/ 6000 mAh (RMX2180 & RMX2185), non-removable
Dimensions | 164.5 x 75.9 x 9.8 mm (6.48 x 2.99 x 0.39 in)
Display | 720 x 1560 pixels, 6.50" IPS LCD, 19.5:9 ratio (~264 ppi density)
Rear Camera 1 | 13 MP, f/2.2, (wide), PDAF
Rear Camera 2 | 2 MP B/W, f/2.4
Rear Camera 3 | 2 MP, f/2.4
Front Camera | 5 MP, f/2.0, (wide)
Release Month | 2020, June 30 (RMX2185), 2020, August 14 (RMX2189), 2020, July 28 (RMX2180) 

![Realme C12](https://fdn2.gsmarena.com/vv/pics/realme/realme-c12-2.jpg "Realme C12")


Patches needed:

1. Needed to boot: https://github.com/SamarV-121/android_vendor_extra/blob/lineage-18.1/patches/external/selinux/0001-Revert-libsepol-Make-an-unknown-permission-an-error-.patch
2. Needed for AV fix: https://github.com/phhusson/platform_frameworks_av/commit/624cfc90b8bedb024f289772960f3cd7072fa940.patch

Copyright (C) 2021 Lineage OS
