#
# Copyright (C) 2025 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(LOCAL_PATH)/pre-base.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/non_ab_device.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base_telephony.mk)

# Inherit from emily device
$(call inherit-product, device/huawei/emily/device.mk)

# Inherit some common LineageOS stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

LINEAGE_BUILDTYPE := RELEASE

PRODUCT_GMS_CLIENTID_BASE := android-huawei

# Device identifier.
PRODUCT_NAME := lineage_emily
PRODUCT_DEVICE := emily
PRODUCT_BRAND := HUAWEI
PRODUCT_MODEL := P20
PRODUCT_MANUFACTURER := HUAWEI

# Build props
PRODUCT_BUILD_PROP_OVERRIDES += \
    BuildDesc="EML-AL00-user 103.0.0 HUAWEIEML-AL00 165-CHN-LGRP1 release-keys" \
    BuildFingerprint=HUAWEI/EML-AL00/HWEML:10/HUAWEIEML-AL00/10.0.0.176C00:user/release-keys \
    DeviceProduct=$(PRODUCT_DEVICE)
