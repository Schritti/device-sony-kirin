# Copyright 2019 The Android Open Source Project
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

# Bootanimation
TARGET_BOOTANIMATION_SIZE := 1080p

# Get the prebuilt list of APNs
$(call inherit-product, vendor/omni/config/gsm.mk)

# Inherit device parts
# TODO: Assume DSDS
$(call inherit-product, device/sony/kirin/aosp_i4113.mk)

# Override Product Name
PRODUCT_NAME := omni_kirin
PRODUCT_MODEL := Xperia 10

# Assert ota packages to be equal to ro.product.device or ro.build.product:
TARGET_OTA_ASSERT_DEVICE := kirin

# Inherit rom parts
$(call inherit-product, device/sony/common/omni.mk)
