#
# Copyright (C) 2025 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#
#

# AAPT conf
PRODUCT_AAPT_CONFIG := normal 
PRODUCT_AAPT_PREF_CONFIG := xxhdpi

# fastbootd
PRODUCT_PACKAGES += \
    fastbootd

# Ramdisk
PRODUCT_PACKAGES += \
    fstab.kirin970 \
    fstab.kirin970.ramdisk \
    fstab.modem \
    init.connectivity.kirin970.rc \
    init.hisi.kirin970.rc \
    init.kirin970.rc \
    init.modem.kirin970.rc \
    init.usb.kirin970.rc \
    ueventd.kirin970.rc

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/rootdir/etc/init.recovery.kirin970.rc:$(TARGET_RECOVERY_OUT)/root/init.recovery.kirin970.rc

# RRO
PRODUCT_ENFORCE_RRO_TARGETS := *

# Soong namespaces
PRODUCT_SOONG_NAMESPACES += \
    $(LOCAL_PATH)

# Inherit the proprietary files
$(call inherit-product, vendor/huawei/charlotte/charlotte-vendor.mk)
