#
# Copyright (C) 2017 Carsten Schlote (schlote@vahanus.net)
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

# Init
TARGET_INIT_VENDOR_LIB := libhuawei_init

# Linker
LD_SHIM_LIBS := '/system/lib64/libcutils.so|libshim.so:/system/lib/libcutils.so|libshim.so:/system/lib64/liblog.so|libshim.so:/system/lib/liblog.so|libshim.so:/system/lib64/libexif.so|libshim.so:/system/lib/libexif.so|libshim.so:/system/lib64/libaudio_route.so|libshim.so:/system/lib/libaudio_route.so|libshim.so'

# RIL
BOARD_PROVIDES_LIBRIL := true
BOARD_PROVIDES_RILD := true
BOARD_PROVIDES_LIBREFERENCE_RIL := true
BOARD_RIL_CLASS := ../../../device/huawei/hi6250/ril/
SIM_COUNT := 2


# Surfaceflinger
NUM_FRAMEBUFFER_SURFACE_BUFFERS := 6


# OTA
BLOCK_BASED_OTA := false

TARGET_USES_HISI_DTIMAGE := true
TARGET_SUPPORTS_32_BIT_APPS := true
TARGET_SUPPORTS_64_BIT_APPS := true
ANDROID_64=true

TARGET_SPECIFIC_HEADER_PATH := device/huawei/hi6250/include
TARGET_OTA_ASSERT_DEVICE := hi6250,VNS,nemo

HISI_TARGET_PRODUCT := hi6250
TARGET_ARM_TYPE := arm64

# Screen
TARGET_SCREEN_HEIGHT := 1920
TARGET_SCREEN_WIDTH := 1080

# Audio
BOARD_USES_ALSA_AUDIO := true

# Define kind of DPI
PRODUCT_AAPT_CONFIG := normal xxhdpi
PRODUCT_AAPT_PREF_CONFIG := xxhdpi

# Charger 
BOARD_CHARGER_DISABLE_INIT_BLANK := true
BACKLIGHT_PATH := "/sys/class/leds/lcd_backlight0/brightness"
HEALTHD_BACKLIGHT_LEVEL := 102

# TWRP Recovery defines
# RECOVERY_VARIANT := twrp
DEVICE_RESOLUTION := 1080x1920
TW_THEME := portrait_mdpi
TW_CUSTOM_BATTERY_PATH := "/sys/devices/battery.5/power_supply/Battery" 

RECOVERY_SDCARD_ON_DATA := true
TW_INTERNAL_STORAGE_PATH := "/data/media"
TW_INTERNAL_STORAGE_MOUNT_POINT := "/emmc"
TW_EXTERNAL_STORAGE_PATH := "/sdcard"
TW_EXTERNAL_STORAGE_MOUNT_POINT := "/sdcard"
TW_BRIGHTNESS_PATH := "/sys/class/leds/lcd_backlight0/brightness"
TW_MAX_BRIGHTNESS := 255
TW_INCLUDE_CRYPTO := true
TW_CRYPTO_FS_TYPE := "ext4"
TW_CRYPTO_REAL_BLKDEV := "/dev/block/platform/hi_mci.0/by-name/userdata"
TW_CRYPTO_MNT_POINT := "/data"
TW_CRYPTO_FS_OPTIONS := "noatime,nosuid,nodev,discard,noauto_da_alloc,journal_async_commit,errors=panic    wait,check"
TW_CRYPTO_FS_FLAGS := "0x00000406"
TW_CRYPTO_KEY_LOC := "footer"
TW_USE_TOOLBOX := true
TW_EXCLUDE_SUPERSU := false
TW_EXTRA_LANGUAGES := true

