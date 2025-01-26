#
# Copyright (C) 2021-2024 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

## Bluetooth
PRODUCT_PACKAGES += \
    NicepoolBluetoothOverlay \
    libbt-vendor

## Bluetooth firmware
include kernel/amlogic/kernel-modules/dhd-driver/firmware/bluetooth/bluetooth.mk

## Init-Files
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/init-files/init.amlogic.wifi_buildin.rc:$(TARGET_COPY_OUT_VENDOR)/etc/init/hw/init.amlogic.wifi_buildin.rc \
    $(LOCAL_PATH)/init-files/remote.tab1:$(TARGET_COPY_OUT_RECOVERY)/root/system/etc/remote.tab1 \
    $(LOCAL_PATH)/init-files/remote.tab2:$(TARGET_COPY_OUT_RECOVERY)/root/system/etc/remote.tab2 \
    $(LOCAL_PATH)/init-files/remote.tab3:$(TARGET_COPY_OUT_RECOVERY)/root/system/etc/remote.tab3 \
    $(LOCAL_PATH)/init-files/remote.cfg:$(TARGET_COPY_OUT_RECOVERY)/root/system/etc/remote.cfg \
    $(LOCAL_PATH)/init-files/remotecfg:$(TARGET_COPY_OUT_RECOVERY)/root/system/bin/remotecfg

## Keylayout (IR)
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/keylayout/Vendor_0001_Product_0001.kl:$(TARGET_COPY_OUT_VENDOR)/usr/keylayout/Vendor_0001_Product_0001.kl

## Wi-Fi firmware
include kernel/amlogic/kernel-modules/dhd-driver/firmware/wifi/wifi.mk


## Inherit from the common tree product makefile
$(call inherit-product, device/amlogic/g12-common/g12.mk)

## Inherit from the proprietary files makefile
$(call inherit-product, vendor/freebox/nicepool/nicepool-vendor.mk)
