#
# Copyright (C) 2020 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

BUILD_BROKEN_DUP_RULES := true
DEVICE_PATH := device/xiaomi/phoenix

# Display density
TARGET_SCREEN_DENSITY := 440

# ANXCamera
-include vendor/aeonax/ANXCamera/BoardConfigAnx.mk

# Inherit from sm6150-common
-include device/xiaomi/sm6150-common/BoardConfigCommon.mk

# Assert
TARGET_OTA_ASSERT_DEVICE := phoenix,phoenixin

# Audio
TARGET_PROVIDES_AUDIO_EXTNS := true

# Init
TARGET_INIT_VENDOR_LIB :=  //$(DEVICE_PATH):libinit_phoenix
TARGET_RECOVERY_DEVICE_MODULES := libinit_phoenix

# HIDL
DEVICE_MANIFEST_FILE += $(DEVICE_PATH)/manifest.xml

ODM_MANIFEST_SKUS += \
    phoenix

ODM_MANIFEST_PHOENIX_FILES := $(DEVICE_PATH)/manifest_phoenix.xml

# Kernel
BOARD_KERNEL_BASE := 0x00000000
BOARD_RAMDISK_OFFSET := 0x02000000
TARGET_KERNEL_CONFIG := vendor/hardrock_defconfig

# Platform
TARGET_BOARD_PLATFORM_GPU := qcom-adreno618

# Properties
TARGET_SYSTEM_PROP += $(DEVICE_PATH)/system.prop
TARGET_PRODUCT_PROP += $(DEVICE_PATH)/product.prop
TARGET_VENDOR_PROP += $(DEVICE_PATH)/vendor.prop

# Inherit from the proprietary version
-include vendor/xiaomi/phoenix/BoardConfigVendor.mk
