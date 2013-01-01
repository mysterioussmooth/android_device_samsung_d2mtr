#
# Copyright (C) 2012 The CyanogenMod Project
# Copyright (C) 2012 The LiquidSmooth Project
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
#

# device
$(call inherit-product, device/samsung/d2mtr/full_d2mtr.mk)

# phone
$(call inherit-product, vendor/liquid/config/common_phone.mk)

# telephony
$(call inherit-product, vendor/liquid/config/common_cdma.mk)

# product
PRODUCT_DEVICE := d2mtr
PRODUCT_BRAND := samsung
PRODUCT_NAME := liquid_d2mtr
PRODUCT_MODEL := SCH-R530M
PRODUCT_MANUFACTURER := Samsung
PRODUCT_PROPERTY_OVERRIDES += ro.buildzipid=liquid.d2mtr.$(shell date +%m%d%y).$(shell date +%H%M%S)

# override
PRODUCT_BUILD_PROP_OVERRIDES += \
    BUILD_NUMBER=R530MVQALJ1 \
    PRODUCT_NAME=d2mtr \
    TARGET_DEVICE=d2mtr \
    TARGET_BUILD_TYPE=user \
    BUILD_VERSION_TAGS=release-keys \
    PRIVATE_BUILD_DESC="d2mtr-user 4.0.4 IMM76D R530MVQALJ1 release-keys" \
    BUILD_FINGERPRINT="samsung/d2mtr/d2mtr:4.0.4/IMM76D/R530MVQALJ1:user/release-keys"
