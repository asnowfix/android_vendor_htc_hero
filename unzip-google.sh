#!/bin/sh

mkdir -p proprietary/google

if [ -z "$1" ]; then
	ZIP="update-hero.zip"
else
    ZIP=$1
fi

unzip -j -d proprietary/google -o ../../../$ZIP \
	data/app/com.amazon.mp3.apk \
	data/app/Facebook.apk \
	data/app/GoogleGoggles.apk \
	system/app/BugReport.apk \
	system/app/CarDock.apk \
	system/app/EnhancedGoogleSearchProvider.apk \
	system/app/GenieWidget.apk \
	system/app/Gmail.apk \
	system/app/GmailProvider.apk \
	system/app/GoogleApps.apk \
	system/app/GoogleBackupTransport.apk \
	system/app/GoogleCheckin.apk \
	system/app/GoogleContactsSyncAdapter.apk \
	system/app/GooglePartnerSetup.apk \
	system/app/GoogleSettingsProvider.apk \
	system/app/GoogleSubscribedFeedsProvider.apk \
	system/app/googlevoice.apk \
	system/app/gtalkservice.apk \
	system/app/HtcCopyright.apk \
	system/app/LatinImeTutorial.apk \
	system/app/Maps.apk \
	system/app/MarketUpdater.apk \
	system/app/MediaUploader.apk \
	system/app/NetworkLocation.apk \
	system/app/PassionQuickOffice.apk \
	system/app/SetupWizard.apk \
	system/app/Street.apk \
	system/app/Talk.apk \
	system/app/TalkProvider.apk \
	system/app/Vending.apk \
	system/app/VoiceSearchWithKeyboard.apk \
	system/app/YouTube.apk \
	system/etc/permissions/com.google.android.datamessaging.xml \
	system/etc/permissions/com.google.android.gtalkservice.xml \
	system/etc/permissions/com.google.android.maps.xml \
	system/framework/com.google.android.gtalkservice.jar \
	system/framework/com.google.android.maps.jar \
	system/lib/libgtalk_jni.so \
	system/lib/libinterstitial.so \
	system/lib/libspeech.so

touch proprietary/google/*
