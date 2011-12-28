USE_CAMERA_STUB := true

# inherit from the proprietary version
-include vendor/htc/shooter/BoardConfigVendor.mk

TARGET_NO_BOOTLOADER := true

TARGET_BOARD_PLATFORM := msm8660
TARGET_BOARD_PLATFORM_GPU := qcom-adreno200

TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_ARCH_VARIANT := armv7-a-neon
TARGET_CPU_SMP := true
ARCH_ARM_HAVE_TLS_REGISTER := true

TARGET_BOOTLOADER_BOARD_NAME := shooter
TARGET_HAVE_HDMI_OUT := true
TARGET_USES_OVERLAY := true
TARGET_NO_RADIOIMAGE := true
TARGET_HAVE_TSLIB := false
TARGET_GLOBAL_CFLAGS += -mfpu=neon -mfloat-abi=softfp
TARGET_GLOBAL_CPPFLAGS += -mfpu=neon -mfloat-abi=softfp

TARGET_SPECIFIC_HEADER_PATH := device/htc/shooter/include

# Wifi related defines
BOARD_WPA_SUPPLICANT_DRIVER := WEXT
WPA_SUPPLICANT_VERSION      := VER_0_6_X
BOARD_WLAN_DEVICE           := bcm4329
WIFI_DRIVER_MODULE_PATH     := "/system/lib/modules/bcm4329.ko"
WIFI_DRIVER_FW_STA_PATH     := "/system/etc/firmware/fw_bcm4329.bin"
WIFI_DRIVER_FW_AP_PATH      := "/system/etc/firmware/fw_bcm4329_apsta.bin"
WIFI_DRIVER_MODULE_ARG      := "firmware_path=/system/etc/firmware/fw_bcm4329.bin nvram_path=/proc/calibration"
WIFI_DRIVER_MODULE_NAME     := "bcm4329"

# Audio 
#BOARD_USES_GENERIC_AUDIO := false
#BOARD_PREBUILT_LIBAUDIO := true

# Bluetooth
BOARD_HAVE_BLUETOOTH := true
BOARD_HAVE_BLUETOOTH_BCM := true

# Gps
#BOARD_VENDOR_QCOM_GPS_LOC_API_HARDWARE := shooter
#BOARD_VENDOR_QCOM_GPS_LOC_API_AMSS_VERSION := 50000

# Define egl.cfg location
BOARD_EGL_CFG := device/htc/shooter/prebuilt/egl/egl.cfg
BOARD_USES_OVERLAY := true
#USE_OPENGL_RENDERER := true
#BOARD_USES_HGL := true

COMMON_GLOBAL_CFLAGS += \
    -DMISSING_EGL_EXTERNAL_IMAGE \
    -DMISSING_EGL_PIXEL_FORMAT_YV12 \
    -DMISSING_GRALLOC_BUFFERS

BOARD_USES_QCOM_HARDWARE := true
BOARD_USES_QCOM_LIBS := true

# Legacy touchscreen support
BOARD_USE_LEGACY_TOUCHSCREEN := true



BOARD_USE_NEW_LIBRIL_HTC := true
TARGET_PROVIDES_LIBRIL := vendor/htc/shooter/proprietary/libril.so

BOARD_KERNEL_CMDLINE := no_console_suspend=1
BOARD_KERNEL_BASE := 0x48000000
BOARD_PAGE_SIZE := 2048



# Define Prebuilt kernel locations
TARGET_PREBUILT_KERNEL := device/htc/shooter/prebuilt/root/kernel

# cat /proc/emmc
# dev:        size     erasesize name
# mmcblk0p31: 000ffa00 00000200 "misc"
# mmcblk0p21: 00fffc00 00000200 "recovery"
# mmcblk0p20: 01000000 00000200 "boot"
# mmcblk0p22: 31fffc00 00000200 "system"
# mmcblk0p24: 077fde00 00000200 "cache"
# mmcblk0p23: 4aabc400 00000200 "userdata"


TARGET_USERIMAGES_USE_EXT4 := true
BOARD_BOOTIMAGE_PARTITION_SIZE := 16777216
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 16776192
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 838860800
BOARD_USERDATAIMAGE_PARTITION_SIZE := 20044333056
BOARD_FLASH_BLOCK_SIZE := 131072

TARGET_RELEASETOOLS_EXTENSIONS := device/htc/common

BOARD_SDCARD_DEVICE_PRIMARY := /dev/block/mmcblk1p1
BOARD_SDCARD_DEVICE_SECONDARY := /dev/block/mmcblk1
BOARD_SDEXT_DEVICE := /dev/block/mmcblk1p2
BOARD_USES_MMCUTILS := true
BOARD_HAS_NO_MISC_PARTITION := true
BOARD_HAS_NO_SELECT_BUTTON := true
BOARD_CUSTOM_GRAPHICS:= ../../../device/htc/shooter/graphics.c
BOARD_USES_RECOVERY_CHARGEMODE := true
