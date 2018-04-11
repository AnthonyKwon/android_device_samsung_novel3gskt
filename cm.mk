# Release name
PRODUCT_RELEASE_NAME := novel3gskt

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/samsung/novel3gskt/device_novel3gskt.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := novel3gskt
PRODUCT_NAME := cm_novel3gskt
PRODUCT_BRAND := samsung
PRODUCT_MODEL := novel3gskt
PRODUCT_MANUFACTURER := samsung
