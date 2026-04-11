#
# Copyright (C) 2025 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Inherit from a05s device
$(call inherit-product, device/samsung/a05s/device.mk)

PRODUCT_DEVICE := a05s
PRODUCT_NAME := lineage_a05s
PRODUCT_BRAND := Samsung
PRODUCT_MODEL := SM-A057F
PRODUCT_MANUFACTURER := samsung

PRODUCT_SYSTEM_NAME := a05snsdxx
PRODUCT_SYSTEM_DEVICE := a05s

# Ignore missing dependencies
TARGET_DISABLE_EPPE := true

PRODUCT_BUILD_PROP_OVERRIDES += \
    BuildDesc="a05snsdxx-user 14 UP1A.231005.007 A057FXXS7CYA1 release-keys" \
    BuildFingerprint="samsung/a05snsdxx/a05s:14/UP1A.231005.007/A057FXXS7CYA1:user/release-keys" \
    DeviceName=$(PRODUCT_SYSTEM_DEVICE) \
    DeviceProduct=$(PRODUCT_SYSTEM_NAME)

PRODUCT_GMS_CLIENTID_BASE := android-samsung-ss
