#
# Copyright (C) 2025 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#
#

# AAPT conf
PRODUCT_AAPT_CONFIG := normal 
PRODUCT_AAPT_PREF_CONFIG := xxhdpi

# Soong namespaces
PRODUCT_SOONG_NAMESPACES += \
    $(LOCAL_PATH)

# Ramdisk
PRODUCT_PACKAGES += \
    fstab.kirin970 \
    fstab.kirin970.ramdisk \
    fstab.modem \
    ueventd.kirin970.rc

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/rootdir/etc/init.recovery.kirin970.rc:$(TARGET_RECOVERY_OUT)/root/init.recovery.kirin970.rc

PRODUCT_COPY_FILES += \
    $(call find-copy-subdir-files,*,$(LOCAL_PATH)/rootdir/etc/,$(TARGET_COPY_OUT_VENDOR)/etc/init/hw)

# Inherit the proprietary files
$(call inherit-product, vendor/huawei/charlotte/charlotte-vendor.mk)
