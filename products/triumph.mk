$(call inherit-product, device/motorola/triumph/device_triumph.mk)

PRODUCT_RELEASE_NAME := Triumph

# Inherit some common AOKP stuff
$(call inherit-product, vendor/aokp/configs/common_phone.mk)
$(call inherit-product, vendor/aokp/configs/cdma.mk)

PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=motorola_triumph BUILD_FINGERPRINT=virgin_mobile/motorola_triumph/triumph:4.1.2/JRO03L/330937:user/release-keys PRIVATE_BUILD_DESC="4.1.2 JRO03L 330937 release-keys"

PRODUCT_NAME := aokp_triumph
PRODUCT_DEVICE := triumph

# Bootanimation
PRODUCT_COPY_FILES += \
   vendor/aokp/prebuilt/bootanimation/bootanimation_480_800.zip:system/media/bootanimation.zip \
