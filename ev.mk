# Inherit AOSP device configuration for inc.
$(call inherit-product, device/htc/shooter/full_shooter.mk)

# Inherit some common evervolv stuff.
$(call inherit-product, vendor/ev/config/common_full_phone.mk)

#
# Setup device specific product configuration.
#
PRODUCT_NAME := ev_shooter
PRODUCT_BRAND := sprint
PRODUCT_DEVICE := shooter
PRODUCT_MODEL := PG86100
PRODUCT_MANUFACTURER := HTC
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=htc_shooter BUILD_ID=GRI40 BUILD_FINGERPRINT=sprint/htc_shooter/shooter:2.3.3/GRI40/83920:user/release-keys PRIVATE_BUILD_DESC="1.13.651.7 CL83920 release-keys"

# Set up the product codename, build version & MOTD.
PRODUCT_CODENAME := Neco
PRODUCT_VERSION_DEVICE_SPECIFIC := p7

PRODUCT_MOTD :="\n\n\n--------------------MESSAGE---------------------\nThank you for choosing Evervolv for your HTC Evo 3D\nPlease visit us at \#evervolv on irc.freenode.net\nFollow @preludedrew for the latest Evervolv updates\nGet the latest rom at evervolv.com\n------------------------------------------------\n"

#PRODUCT_PACKAGES += \
    Camera

# Copy compatible prebuilt files
PRODUCT_COPY_FILES +=  \
    vendor/ev/prebuilt/qhd/media/bootanimation.zip:system/media/bootanimation.zip

# qHD overlay
PRODUCT_PACKAGE_OVERLAYS += \
    vendor/ev/overlay/qhd

# USB
ADDITIONAL_DEFAULT_PROPERTIES += \
    persist.sys.usb.config=mass_storage

#ADDITIONAL_DEFAULT_PROPERTIES += persist.sys.usb.config=mtp,adb
