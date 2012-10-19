# Inherit common shooter stuffs
$(call inherit-product, device/htc/shooter/device_base.mk)

## overlays
DEVICE_PACKAGE_OVERLAYS += device/htc/shooter/overlay

## apns
PRODUCT_COPY_FILES += \
    device/htc/shooter/prebuilt/system/etc/apns-conf.xml:system/etc/apns-conf.xml

## CDMA Sprint stuffs
PRODUCT_PROPERTY_OVERRIDES += \
    ro.com.google.clientidbase=android-sprint-us \
    ro.com.google.locationfeatures=1 \
    ro.cdma.home.operator.numeric=310120 \
    ro.cdma.home.operator.alpha=Sprint \
    gsm.sim.operator.alpha = sprint \
    gsm.sim.operator.numeric = 310120 \
    gsm.sim.operator.iso-country = us \
    gsm.operator.alpha = sprint \
    gsm.operator.numeric = 310120 \
    gsm.operator.iso-country = us
