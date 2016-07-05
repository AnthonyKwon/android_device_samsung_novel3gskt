# Release name
PRODUCT_RELEASE_NAME := g150n0

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/samsung/g150n0/device.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := g150n0
PRODUCT_NAME := cm_g150n0
PRODUCT_BRAND := samsung
PRODUCT_MODEL := g150n0
PRODUCT_MANUFACTURER := samsung
