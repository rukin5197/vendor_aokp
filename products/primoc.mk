# Inherit AOSP device configuration for mako
$(call inherit-product, device/htc/primoc/device.mk)

# Inherit AOKP common bits
$(call inherit-product, vendor/aokp/configs/common.mk)

# Inherit CDMA common stuff
$(call inherit-product, vendor/aokp/configs/cdma.mk)

# PrimoC Overlay
PRODUCT_PACKAGE_OVERLAYS += vendor/aokp/overlay/primoc

# Setup device specific product configuration
PRODUCT_NAME := aokp_primoc
PRODUCT_BRAND := HTC
PRODUCT_DEVICE := primoc
PRODUCT_MODEL := One V
PRODUCT_MANUFACTURER := HTC

PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=htc_primoc BUILD_FINGERPRINT=virgin_mobile/htc_primoc/primoc:4.2.1/JOP40C/330937:user/release-keys

PRODUCT_COPY_FILES += \
    vendor/aokp/prebuilt/bootanimation/bootanimation_480_800.zip:system/media/bootanimation.zip
