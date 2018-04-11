$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

# The gps config appropriate for this device
$(call inherit-product, device/common/gps/gps_us_supl.mk)

$(call inherit-product-if-exists, vendor/samsung/novelltekx/novelltekx-vendor.mk)

LOCAL_PATH := device/samsung/novel3gskt

$(call inherit-product, build/target/product/full.mk)

PRODUCT_NAME := full_novel3gskt
PRODUCT_DEVICE := novel3gskt
