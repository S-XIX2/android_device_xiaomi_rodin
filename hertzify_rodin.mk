#
# Copyright (C) 2025 The Hertzify Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit_only.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Hertzify stuff.
$(call inherit-product, vendor/hertzify/config/common_full_phone.mk)

# Inherit from rodin device
$(call inherit-product, device/xiaomi/rodin/device.mk)

# AOSP Flags
TARGET_SHIPS_DOLBY := true
TARGET_BOOT_ANIMATION_RES := 1080
HERTZIFY_MAINTAINER := Sensei
HERTZIFY_BUILD_TYPE := OFFICIAL

PRODUCT_DEVICE := rodin
PRODUCT_NAME := hertzify_rodin
PRODUCT_BRAND := POCO
PRODUCT_MODEL := 2412DPC0AG
PRODUCT_MANUFACTURER := xiaomi
PRODUCT_MARKETNAME=POCO X7 Pro

PRODUCT_SYSTEM_NAME := rodin_global
PRODUCT_SYSTEM_DEVICE := rodin

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

PRODUCT_BUILD_PROP_OVERRIDES += \
    BuildDesc="missi-user 16 BP2A.250605.031.A3 OS3.0.10.0.WOJMIXM release-keys" \
    BuildFingerprint=POCO/rodin_global/rodin:15/AP3A.240905.015.A2/OS3.0.10.0.WOJMIXM:user/release-keys \
    DeviceName=$(PRODUCT_SYSTEM_DEVICE) \
    DeviceProduct=$(PRODUCT_SYSTEM_NAME)

