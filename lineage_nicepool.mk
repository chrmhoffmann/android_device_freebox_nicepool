#
# Copyright (C) 2021-2023 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Not set in time to check, so set before everything else
PRODUCT_IS_ATV := true

# Inherit some common AOSP stuff
$(call inherit-product, device/google/atv/products/atv_base.mk)

# Inherit some common Lineage stuff
$(call inherit-product, vendor/lineage/config/common_full_tv.mk)

# Inherit device configuration
$(call inherit-product, $(LOCAL_PATH)/device.mk)

## Device identifier. This must come after all inclusions
PRODUCT_BRAND := Freebox
PRODUCT_DEVICE := nicepool
PRODUCT_GMS_CLIENTID_BASE := android-askey-tv
PRODUCT_MANUFACTURER := Freebox
PRODUCT_MODEL := Freebox Player POP
PRODUCT_NAME := lineage_nicepool

PRODUCT_BUILD_PROP_OVERRIDES += \
    BuildDesc="fbx8am-user 10 QTT8.201201.002 v10.5.46 release-keys" \
    BuildFingerprint=Freebox/fbx8am/fbx8am:10/QTT8.201201.002/v10.5.46:user/release-keys \
    DeviceProduct=fbx8am \
    SystemDevice=fbx8am \
    SystemName=fbx8am
