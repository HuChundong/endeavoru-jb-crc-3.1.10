./android_clean.sh

echo "168" > .version
make ARCH=arm CROSS_COMPILE=~/android/kernel/toolchains/arm-eabi-linaro-4.6.2/bin/arm-eabi- ap33_android_defconfig
make ARCH=arm CROSS_COMPILE=~/android/kernel/toolchains/arm-eabi-linaro-4.6.2/bin/arm-eabi- -j12
make ARCH=arm CROSS_COMPILE=~/android/kernel/toolchains/arm-eabi-linaro-4.6.2/bin/arm-eabi- -C drivers/net/wireless/compat-wireless_R5.SP2.03 KLIB=`pwd` KLIB_BUILD=`pwd` clean -j20
make ARCH=arm CROSS_COMPILE=~/android/kernel/toolchains/arm-eabi-linaro-4.6.2/bin/arm-eabi- -C drivers/net/wireless/compat-wireless_R5.SP2.03 KLIB=`pwd` KLIB_BUILD=`pwd` -j20



