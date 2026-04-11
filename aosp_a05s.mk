#
# Copyright (C) 2025 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base_telephony.mk)

# Inherit some common PixelExperience stuff.
$(call inherit-product, vendor/aosp/config/common_full_phone.mk)

# Enable updating of APEXes
$(call inherit-product, $(SRC_TARGET_DIR)/product/updatable_apex.mk)

# Inherit from a05s device
$(call inherit-product, device/samsung/a05s/device.mk)

PRODUCT_DEVICE := a05s
PRODUCT_NAME := aosp_a05s
PRODUCT_BRAND := samsung
PRODUCT_MODEL := SM-A057F
PRODUCT_MANUFACTURER := samsung

PRODUCT_SYSTEM_NAME := a05snsdxx
PRODUCT_SYSTEM_DEVICE := a05s

# Recovery
TARGET_USES_AOSP_RECOVERY := true

PRODUCT_SHIPPING_API_LEVEL := 33

PRIVATE_BUILD_DESC := "a05snsdxx-user 13 TP1A.220624.014 A057FXXS7CYA1 release-keys"
BUILD_FINGERPRINT := "samsung/a05snsdxx/a05s:13/TP1A.220624.014/A057FXXS7CYA1:user/release-keys"
PRODUCT_GMS_CLIENTID_BASE := android-samsung
