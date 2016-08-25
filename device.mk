$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

DEVICE_PACKAGE_OVERLAYS += device/samsung/novel3gskt/overlay

LOCAL_PATH := device/samsung/novel3gskt

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/selinux/file_contexts:recovery/root/prebuilt_file_contexts \
    $(LOCAL_PATH)/recovery.fstab:recovery/root/etc/recovery.fstab \
    $(LOCAL_PATH)/twrp.fstab:recovery/root/etc/twrp.fstab

$(call inherit-product, build/target/product/full.mk)

PRODUCT_NAME := samsung_novel3gskt
PRODUCT_BRAND := Samsung
