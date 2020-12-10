#!/bin/bash

KERNEL_VER=$(whiptail --title "Orange Pi Build System" \
	--menu "$MENUSTR" 10 40 3 --cancel-button Finish --ok-button Select \
	"0"  "linux3.4.113" \
	3>&1 1>&2 2>&3)

if [ "${KERNEL_VER}" = "0" ]; then
	PLATFORM="OrangePiH2"
	KERNEL=("OrangePiH3_kernel" "master")
	UBOOT=("OrangePiH3_uboot" "master")
	TOOLCHAIN=("toolchain" "arm-linux-gnueabi-1.13.1")
else
	PLATFORM="OrangePiH2_mainline"
	KERNEL=("mainline_kernel" "master")
	UBOOT=("mainline_uboot" "master")
	TOOLCHAIN=("toolchain" "arm-linux-gnueabihf-7.2.1")
fi

SCRIPTS=("scripts" "master")
EXTERNAL=("external" "master")

ORANGEPI_GIT="https://github.com/orangepi-xunlong"
