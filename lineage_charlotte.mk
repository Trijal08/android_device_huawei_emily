#
# Copyright (C) 2025 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base_telephony.mk)

# Inherit from charlotte device
$(call inherit-product, device/huawei/charlotte/device.mk)

# Inherit some common LineageOS stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Bootanimation
TARGET_SCREEN_HEIGHT := 2240
TARGET_SCREEN_WIDTH := 1080

PRODUCT_SHIPPING_API_LEVEL := 27

LINEAGE_BUILDTYPE := RELEASE

PRODUCT_GMS_CLIENTID_BASE := android-huawei

# Device identifier.
PRODUCT_NAME := lineage_charlotte
PRODUCT_DEVICE := charlotte
PRODUCT_BRAND := HUAWEI
PRODUCT_MODEL := P20-Pro
PRODUCT_MANUFACTURER := HUAWEI

# Use the latest approved GMS identifiers
PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="CLT-L29-user 102.0.0 HUAWEICLT-L29 226-OVS-LGRP2 release-keys"

BUILD_FINGERPRINT := "HUAWEI/CLT-L29/HWCLT:10/HUAWEICLT-L29/10.0.0.171C432:user/release-keys"
