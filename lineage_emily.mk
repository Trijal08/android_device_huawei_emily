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

# Inherit some common stuff
ROM_VENDOR := lineage
ifdef ROM_VENDOR
$(call inherit-product, vendor/$(ROM_VENDOR)/config/common_full_phone.mk)
else
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)
endif

LINEAGE_BUILDTYPE := RELEASE

PRODUCT_GMS_CLIENTID_BASE := android-huawei

# Device identifier.
PRODUCT_DEVICE := emily
ifdef ROM_VENDOR
PRODUCT_NAME := $(ROM_VENDOR)_$(PRODUCT_DEVICE)
else
PRODUCT_NAME := lineage_$(PRODUCT_DEVICE)
endif
PRODUCT_BRAND := HUAWEI
PRODUCT_MODEL := P20
PRODUCT_MANUFACTURER := HUAWEI

# UDFPS support
TARGET_HAS_UDFPS := false

# Blur
TARGET_ENABLE_BLUR := true

# Lawnchair (Pixel Launcher by default)
TARGET_INCLUDE_PIXEL_LAUNCHER := true
TARGET_DEFAULT_PIXEL_LAUNCHER := true
TARGET_PREBUILT_LAWNCHAIR_LAUNCHER := true

# Include Aperture camera app
PRODUCT_NO_CAMERA := false

# Custom package installer
TARGET_USE_CUSTOM_PACKAGE_INSTALLER := true

# Live wallpapers
TARGET_INCLUDE_LIVE_WALLPAPERS := true

# Quick tap
TARGET_SUPPORTS_QUICK_TAP  := true

# Now Playing
TARGET_SUPPORTS_NOW_PLAYING := true

# Clear Calling
TARGET_SUPPORTS_CLEAR_CALLING := true

# Call Recording Support
TARGET_SUPPORTS_CALL_RECORDING := true

# Bypass charging
BYPASS_CHARGE_SUPPORTED := true

# GMS
WITH_GMS := true
TARGET_USES_PICO_GAPPS := true

# Mist OS Flags
MIST_BUILD_TYPE := OFFICIAL
MISTOS_MAINTAINER := GamerBoy1234294

# Build props
PRODUCT_BUILD_PROP_OVERRIDES += \
    BuildDesc="EML-AL00-user 103.0.0 HUAWEIEML-AL00 165-CHN-LGRP1 release-keys" \
    BuildFingerprint=HUAWEI/EML-AL00/HWEML:10/HUAWEIEML-AL00/10.0.0.176C00:user/release-keys \
    DeviceProduct=$(PRODUCT_DEVICE)
