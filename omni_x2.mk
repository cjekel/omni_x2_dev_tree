# Copyright (C) 2016 The CyanogenMod Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
#$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Get the prebuilt list of APNs
$(call inherit-product, vendor/omni/config/gsm.mk)

# Inherit from the common Open Source product configuration
$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base_telephony.mk)

# must be before including omni part
TARGET_BOOTANIMATION_SIZE := 1440p

# Inherit from our custom product configuration
$(call inherit-product, vendor/omni/config/common.mk)

PRODUCT_PACKAGE_OVERLAYS += vendor/omni/overlay/CarrierConfig

# Inherit from device
$(call inherit-product, device/leeco/x2/device.mk)

PRODUCT_NAME := omni_x2
PRODUCT_DEVICE := x2
PRODUCT_MANUFACTURER := LeMobile
PRODUCT_BRAND := LeEco

PRODUCT_GMS_CLIENTID_BASE := android-letv

TARGET_VENDOR_PRODUCT_NAME := LeMax2
TARGET_VENDOR_DEVICE_NAME := le_x2
PRODUCT_BUILD_PROP_OVERRIDES += TARGET_DEVICE=le_x2 PRODUCT_NAME=LeMax2

PRODUCT_BUILD_PROP_OVERRIDES += \
    BUILD_FINGERPRINT=Letv/LeMax2_WW/le_x2:6.0.1/FGXOSOP5801910121S/letv10120105:user/release-keys \
    PRIVATE_BUILD_DESC="le_x2-user 6.0.1 FGXOSOP5801910121S eng.letv.20161012.010150.wechatpay release-keys"

PRODUCT_SYSTEM_PROPERTY_BLACKLIST += ro.product.model

TARGET_VENDOR := leeco
