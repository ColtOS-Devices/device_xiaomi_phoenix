#
# Copyright (C) 2020 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

$(call inherit-product, device/xiaomi/phoenix/device.mk)

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/colt/config/common_full_phone.mk)

# Device identifier. This must come after all inclusions.
PRODUCT_NAME := colt_phoenix
PRODUCT_DEVICE := phoenix
PRODUCT_BRAND := Redmi
PRODUCT_MODEL := Redmi K30
PRODUCT_MANUFACTURER := Xiaomi

#Bootanimation size
TARGET_BOOT_ANIMATION_RES := 1080x2340

#Tags
COLT_BUILD_TYPE := Official
COLT_DEVICE_MAINTAINER := chiranth

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

BUILD_FINGERPRINT := google/coral/coral:11/RP1A.201005.004/6782484:user/release-keys
