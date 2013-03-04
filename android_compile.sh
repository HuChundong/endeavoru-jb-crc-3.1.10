TCHAIN=~/android/kernel/toolchains/arm-eabi-linaro-4.6.2/bin/arm-eabi-

./android_clean.sh

make ARCH=arm CROSS_COMPILE=$TCHAIN ap33_android_defconfig
date '+%Y%m%d%H' > .version

make ARCH=arm CROSS_COMPILE=$TCHAIN -j12
make ARCH=arm CROSS_COMPILE=$TCHAIN -C drivers/net/wireless/compat-wireless_R5.SP2.03 KLIB=`pwd` KLIB_BUILD=`pwd` -j20
sh ./copy_modules.sh


