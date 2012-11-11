#
# Copyright (C) 2011 The Evervolv Project
# Portions Copyright (C) 2011 The CyanogenMod Project
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

# Include shooter's BoardConfig.mk
include device/htc/shooter/BoardConfig.mk

# common msm8660 configs
$(call inherit-product, device/htc/msm8660-common/msm8660.mk)

## The gps config appropriate for this device
PRODUCT_COPY_FILES += device/common/gps/gps.conf_US:system/etc/gps.conf

## recovery and custom charging
PRODUCT_COPY_FILES += \
    device/htc/shooter/recovery/sbin/choice_fn:recovery/root/sbin/choice_fn \
    device/htc/shooter/recovery/sbin/power_test:recovery/root/sbin/power_test \
    device/htc/shooter/recovery/sbin/offmode_charging:recovery/root/sbin/offmode_charging \
    device/htc/shooter/recovery/sbin/detect_key:recovery/root/sbin/detect_key \
    device/htc/shooter/recovery/sbin/htcbatt:recovery/root/sbin/htcbatt

## ramdisk stuffs
PRODUCT_COPY_FILES += \
    device/htc/shooter/prebuilt/root/init.shooter.rc:root/init.shooter.rc \
    device/htc/shooter/prebuilt/root/init.shooter.usb.rc:root/init.shooter.usb.rc \
    device/htc/shooter/prebuilt/root/ueventd.shooter.rc:root/ueventd.shooter.rc \
    device/htc/shooter/prebuilt/root/fstab.shooter:root/fstab.shooter

# BCM4329 BT Firmware
PRODUCT_COPY_FILES += \
    device/htc/msm8660-common/firmware/bcm4329.hcd:system/vendor/firmware/bcm4329.hcd

## (2) Also get non-open-source specific aspects if available
$(call inherit-product-if-exists, vendor/htc/shooter/shooter-vendor.mk)

## misc
PRODUCT_PROPERTY_OVERRIDES += \
    ro.setupwizard.enable_bypass=1 \
    dalvik.vm.lockprof.threshold=500 \
    ro.com.google.locationfeatures=1 \
    dalvik.vm.dexopt-flags=m=y

# Permissions
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.telephony.cdma.xml:system/etc/permissions/android.hardware.telephony.cdma.xml

# GPS and Lights
PRODUCT_PACKAGES += \
    gps.shooter \
    lights.shooter

## qcom/media
PRODUCT_PACKAGES += \
    libstagefrighthw
#    libOmxCore \
#    libOmxVdec \
#    libOmxVenc \
#    libdivxdrmdecrypt

## misc
PRODUCT_PACKAGES += \
    gps.shooter \
    librs_jni \
    com.android.future.usb.accessory

# Temporary adb hack
ADDITIONAL_DEFAULT_PROPERTIES += \
    persist.service.adb.enable=1

## dsp Audio
PRODUCT_COPY_FILES += \
    device/htc/shooter/dsp/AIC3254_REG.csv:system/etc/AIC3254_REG.csv \
    device/htc/shooter/dsp/AIC3254_REG_DualMic.csv:system/etc/AIC3254_REG_DualMic.csv \
    device/htc/shooter/dsp/AdieHWCodec.csv:system/etc/AdieHWCodec.csv \
    device/htc/shooter/dsp/CodecDSPID.txt:system/etc/CodecDSPID.txt \
    device/htc/shooter/dsp/AudioBTID.csv:system/etc/AudioBTID.csv \
    device/htc/shooter/dsp/TPA2051_CFG.csv:system/etc/TPA2051_CFG.csv \
    device/htc/shooter/dsp/soundimage/Sound_FM_HP.txt:system/etc/soundimage/Sound_FM_HP.txt \
    device/htc/shooter/dsp/soundimage/Sound_FM_SPK.txt:system/etc/soundimage/Sound_FM_SPK.txt \
    device/htc/shooter/dsp/soundimage/Sound_Original.txt:system/etc/soundimage/Sound_Original.txt \
    device/htc/shooter/dsp/soundimage/Sound_Original_MFG.txt:system/etc/soundimage/Sound_Original_MFG.txt \
    device/htc/shooter/dsp/soundimage/Sound_Original_Recording.txt:system/etc/soundimage/Sound_Original_Recording.txt \
    device/htc/shooter/dsp/soundimage/Sound_Original_SPK.txt:system/etc/soundimage/Sound_Original_SPK.txt \
    device/htc/shooter/dsp/soundimage/Sound_Phone_Original.txt:system/etc/soundimage/Sound_Phone_Original.txt \
    device/htc/shooter/dsp/soundimage/Sound_Phone_Original_HP.txt:system/etc/soundimage/Sound_Phone_Original_HP.txt \
    device/htc/shooter/dsp/soundimage/Sound_Phone_Original_REC.txt:system/etc/soundimage/Sound_Phone_Original_REC.txt \
    device/htc/shooter/dsp/soundimage/Sound_Phone_Original_SPK.txt:system/etc/soundimage/Sound_Phone_Original_SPK.txt \
    device/htc/shooter/dsp/soundimage/Sound_Rec_Landscape.txt:system/etc/soundimage/Sound_Rec_Landscape.txt \
    device/htc/shooter/dsp/soundimage/Sound_Rec_mono.txt:system/etc/soundimage/Sound_Rec_mono.txt \
    device/htc/shooter/dsp/soundimage/Sound_Recording.txt:system/etc/soundimage/Sound_Recording.txt \
    device/htc/shooter/dsp/soundimage/Sound_Rec_Portrait.txt:system/etc/soundimage/Sound_Rec_Portrait.txt \
    device/htc/shooter/dsp/soundimage/Sound_Rec_Voice_record.txt:system/etc/soundimage/Sound_Rec_Voice_record.txt \
    device/htc/shooter/dsp/soundimage/srs_geq10.cfg:system/etc/soundimage/srs_geq10.cfg \
    device/htc/shooter/dsp/soundimage/srsfx_trumedia_51.cfg:system/etc/soundimage/srsfx_trumedia_51.cfg \
    device/htc/shooter/dsp/soundimage/srsfx_trumedia_movie.cfg:system/etc/soundimage/srsfx_trumedia_movie.cfg \
    device/htc/shooter/dsp/soundimage/srsfx_trumedia_music.cfg:system/etc/soundimage/srsfx_trumedia_music.cfg

# keylayouts
PRODUCT_COPY_FILES += \
    device/htc/shooter/prebuilt/system/usr/keylayout/h2w_headset.kl:system/usr/keylayout/h2w_headset.kl\
    device/htc/shooter/prebuilt/system/usr/keylayout/AVRCP.kl:system/usr/keylayout/AVRCP.kl \
    device/htc/shooter/prebuilt/system/usr/keylayout/qwerty.kl:system/usr/keylayout/qwerty.kl\
    device/htc/shooter/prebuilt/system/usr/keylayout/atmel-touchscreen.kl:system/usr/keylayout/atmel-touchscreen.kl \
    device/htc/shooter/prebuilt/system/usr/keylayout/shooter-keypad.kl:system/usr/keylayout/shooter-keypad.kl

# Keychars
PRODUCT_COPY_FILES += \
    device/htc/shooter/prebuilt/system/usr/keychars/shooter-keypad.kcm.bin:system/usr/keychars/shooter-keypad.kcm \
    device/htc/shooter/prebuilt/system/usr/keychars/BT_HID.kcm.bin:system/usr/keychars/BT_HID.kcm \
    device/htc/shooter/prebuilt/system/usr/keychars/qwerty2.kcm.bin:system/usr/keychars/qwerty2.kcm \
    device/htc/shooter/prebuilt/system/usr/keychars/qwerty.kcm.bin:system/usr/keychars/qwerty.kcm

# idc
PRODUCT_COPY_FILES += \
    device/htc/shooter/prebuilt/system/usr/idc/atmel-touchscreen.idc:system/usr/idc/atmel-touchscreen.idc

# Device Specific Firmware
PRODUCT_COPY_FILES += \
    device/htc/shooter/firmware/default_bak.acdb:system/etc/firmware/default_bak.acdb

# QC thermald config
PRODUCT_COPY_FILES += device/htc/shooter/prebuilt/thermald.conf:system/etc/thermald.conf

# we have enough storage space to hold precise GC data
PRODUCT_TAGS += dalvik.gc.type-precise

$(call inherit-product-if-exists, hardware/broadcom/wlan/bcmdhd/firmware/bcm4329/device-bcm.mk)

PRODUCT_LOCALES += en

PRODUCT_COPY_FILES += \
    device/htc/shooter/prebuilt/system/etc/vold.fstab:system/etc/vold.fstab

# Kernel Modules
ifneq ($(BUILD_KERNEL),true)
    PRODUCT_COPY_FILES += $(shell \
        find device/htc/shooter/prebuilt/system/lib/modules -name '*.ko' \
        | sed -r 's/^\/?(.*\/)([^/ ]+)$$/\1\2:system\/lib\/modules\/\2/' \
        | tr '\n' ' ')
endif

$(call inherit-product-if-exists, vendor/htc/shooter/shooter-vendor.mk)

PRODUCT_COPY_FILES += \
     device/htc/shooter/prebuilt/system/etc/media_profiles.xml:system/etc/media_profiles.xml

# media profiles and capabilities spec
$(call inherit-product, device/htc/shooter/media_a1026.mk)

## htc audio settings
$(call inherit-product, device/htc/shooter/media_htcaudio.mk)

$(call inherit-product, frameworks/native/build/phone-xhdpi-1024-dalvik-heap.mk)

$(call inherit-product, build/target/product/full_base_telephony.mk)


PRODUCT_NAME := htc_shooter
PRODUCT_DEVICE := shooter
