#!/bin/bash
rm ~/patchrom/Others/kit/BOOT-EXTRACTED2/zImage
rm -r ~/patchrom/Others/kit/BOOT-EXTRACTED
rm -r ~/patchrom/Others/kit/exm_kernel/system/lib/modules/
rm ~/patchrom/Others/kit/exm_kernel/boot.img
rm ~/patchrom/Others/kit/exm_kernel/WORKING_030213_005518/boot.img 
mkdir ~/patchrom/Others/kit/exm_kernel/system/lib/modules
cp ./arch/arm/boot/zImage ~/patchrom/Others/kit/BOOT-EXTRACTED2/zImage
cp -r ~/patchrom/Others/kit/BOOT-EXTRACTED2 ~/patchrom/Others/kit/BOOT-EXTRACTED
find . -name "*.ko" -exec cp {} ~/patchrom/Others/kit/exm_kernel/system/lib/modules \;
cd ~/patchrom/Others/kit
./menu
