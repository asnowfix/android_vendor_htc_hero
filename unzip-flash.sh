#!/bin/sh

mkdir -p proprietary/google

if [ -z "$1" ]; then
	ZIP="update-hero.zip"
else
    ZIP=$1
fi

unzip -j -d proprietary/flash -o ../../../$ZIP \
	system/app/FlashLitePlugin.apk \
	system/app/FlashPlayer.apk \
	system/lib/libflashlite.so \
	system/lib/libflashsnddec.so \
	system/lib/libflsaplayerlib.so \
	system/lib/libon2.so \
	system/lib/libsorenson.so

touch proprietary/flash/*
