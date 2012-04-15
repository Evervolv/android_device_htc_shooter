# inherit from the proprietary version
-include vendor/htc/shooter/BoardConfigVendor.mk

TARGET_NO_BOOTLOADER := true

TARGET_BOARD_PLATFORM := msm8660
TARGET_BOARD_PLATFORM_GPU := qcom-adreno200

TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_ARCH_VARIANT := armv7-a-neon
TARGET_ARCH_VARIANT_CPU := cortex-a8
TARGET_ARCH_VARIANT_FPU := neon
TARGET_CPU_SMP := true
ARCH_ARM_HAVE_TLS_REGISTER := true
ARCH_ARM_HAVE_VFP := true

TARGET_USE_SCORPION_BIONIC_OPTIMIZATION := true
TARGET_USE_SCORPION_PLD_SET := true
TARGET_SCORPION_BIONIC_PLDOFFS := 6
TARGET_SCORPION_BIONIC_PLDSIZE := 128

TARGET_BOOTLOADER_BOARD_NAME := shooter
TARGET_NO_RADIOIMAGE := true
TARGET_HAVE_TSLIB := false

TARGET_SPECIFIC_HEADER_PATH := device/htc/shooter/include

# Wifi related defines -- TODO: Move firmware to /vendor
BOARD_WPA_SUPPLICANT_DRIVER      := WEXT
WPA_SUPPLICANT_VERSION           := VER_0_8_X
BOARD_WPA_SUPPLICANT_PRIVATE_LIB := lib_driver_cmd_wext
BOARD_WLAN_DEVICE                := bcm4329
WIFI_DRIVER_FW_PATH_PARAM        := "/sys/module/bcm4329/parameters/firmware_path"
WIFI_DRIVER_MODULE_PATH          := "/system/lib/modules/bcm4329.ko"
WIFI_DRIVER_FW_PATH_STA          := "/system/etc/firmware/fw_bcm4329.bin"
WIFI_DRIVER_FW_PATH_AP           := "/system/etc/firmware/fw_bcm4329_apsta.bin"
WIFI_DRIVER_MODULE_ARG           := "firmware_path=/system/etc/firmware/fw_bcm4329.bin nvram_path=/proc/calibration iface_name=wlan"
WIFI_DRIVER_MODULE_NAME          := "bcm4329"
WIFI_BAND                        := 802_11_ABG

# Bluetooth
BOARD_HAVE_BLUETOOTH := true
BOARD_HAVE_BLUETOOTH_BCM := true

# Gps
#BOARD_VENDOR_QCOM_GPS_LOC_API_HARDWARE := shooter
#BOARD_VENDOR_QCOM_GPS_LOC_API_AMSS_VERSION := 50000

# Define egl.cfg location
USE_OPENGL_RENDERER := true
TARGET_USES_C2D_COMPOSITION := true
TARGET_USES_OVERLAY := true
TARGET_USES_GENLOCK := true
TARGET_USES_SF_BYPASS := true
TARGET_HAVE_BYPASS := true
#TARGET_HAVE_HDMI_OUT := true
BOARD_USE_QCOM_PMEM := true
TARGET_GRALLOC_USES_ASHMEM := true
#TARGET_HARDWARE_3D := true
BOARD_EGL_CFG := device/htc/shooter/prebuilt/system/lib/egl/egl.cfg
BOARD_OVERLAY_FORMAT_YCbCr_420_SP := true
TARGET_FORCE_CPU_UPLOAD := true
BOARD_HAS_SCREEN_OFF_FLICKER := true

COMMON_GLOBAL_CFLAGS += -DREFRESH_RATE=60 -DQCOM_HARDWARE

BOARD_USES_QCOM_HARDWARE := true
BOARD_USES_QCOM_LIBS := true

# Legacy touchscreen support
BOARD_USE_LEGACY_TOUCHSCREEN := true

# RIL
BOARD_USE_NEW_LIBRIL_HTC := true

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
