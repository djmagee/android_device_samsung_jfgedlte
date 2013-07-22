# Copyright (C) 2009 The CyanogenMod Project
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
# This file sets variables that control the way modules are built
# thorughout the system. It should not be used to conditionally
# disable makefiles (the proper mechanism to control what gets
# included in a build is to use PRODUCT_PACKAGES in a product
# definition file).
#

# inherit from common JF
-include device/samsung/jf-common/BoardConfigCommon.mk

# inherit from the proprietary version
-include vendor/samsung/jfgedlte/BoardConfigVendor.mk

# from stock, why not?
BOARD_KERNEL_CMDLINE := console=null androidboot.hardware=qcom user_debug=31 msm_rtb.filter=0x3F ehci-hcd.park=3

# match partition layout on our device
TARGET_RECOVERY_FSTAB := device/samsung/jfgedlte/recovery.fstab

# boot -> mmcblk0p21
# recovery -> p22
# system -> p16
# userdata -> p28
BOARD_BOOTIMAGE_PARTITION_SIZE := 0xA00000
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 0xA00000
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 0x46666000
BOARD_USERDATAIMAGE_PARTITION_SIZE := 0x32C400000
BOARD_FLASH_BLOCK_SIZE := 131072


# Assert
TARGET_OTA_ASSERT_DEVICE := jflte,jfgedlte,i9505G,GT-I9505G


# Kernel
#TARGET_PREBUILT_KERNEL := device/samsung/jfgedlte/kernel
TARGET_KERNEL_CONFIG         := jf_tmo_defconfig
