#
# Copyright (C) 2021-2025 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit_only.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from salami device
$(call inherit-product, device/oneplus/salami/device.mk)

# Inherit some common AlphaDroid stuff.
$(call inherit-product, vendor/alpha/config/common_full_phone.mk)

# Maintainer
ALPHA_MAINTAINER := JYR_RC
ALPHA_BUILD_TYPE := Official

# Device config
TARGET_HAS_UDFPS := true
TARGET_ENABLE_BLUR := false
TARGET_EXCLUDES_AUDIOFX := true
TARGET_FACE_UNLOCK_SUPPORTED := true
TARGET_BUILD_PACKAGE := 3

# TARGET_BUILD_PACKAGE options:
# 1 - vanilla (default)
# 2 - microg
# 3 - gapps
TARGET_BUILD_PACKAGE := 3

# TARGET_LAUNCHER options:
# 1 - stock (default)
# 2 - lawnchair
# 3 - pixel (valid only on gapps builds)
TARGET_LAUNCHER := 3

# GAPPS (valid only for GAPPS builds)
TARGET_SUPPORTS_QUICK_TAP := true
TARGET_INCLUDE_PIXEL_LAUNCHER := true
TARGET_SUPPORTS_CALL_RECORDING := true
TARGET_INCLUDE_STOCK_ARCORE := true
TARGET_INCLUDE_LIVE_WALLPAPERS := true
TARGET_SUPPORTS_GOOGLE_RECORDER := true
TARGET_INCLUDE_MATLOG := true

# Extras
TARGET_INCLUDE_SIMPLE_TUNE := true

PRODUCT_NAME := alpha_salami
PRODUCT_DEVICE := salami
PRODUCT_MANUFACTURER := OnePlus
PRODUCT_BRAND := OnePlus
PRODUCT_MODEL := CPH2449

PRODUCT_GMS_CLIENTID_BASE := android-oneplus

PRODUCT_BUILD_PROP_OVERRIDES += \
    BuildDesc="CPH2449EEA-user 15 TP1A.220905.001 T.R4T3.1db7378-31ae-31b0 release-keys" \
    BuildFingerprint=OnePlus/CPH2449EEA/OP594DL1:15/TP1A.220905.001/T.R4T3.1db7378-31ae-31b0:user/release-keys \
    DeviceName=OP594DL1 \
    DeviceProduct=CPH2449 \
    SystemDevice=OP594DL1 \
    SystemName=CPH2449
