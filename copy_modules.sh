#!/bin/bash

cp ./arch/arm/boot/zImage ~/android/modules/zImage
find . -name "*.ko" -exec cp {} ~/android/modules \;
