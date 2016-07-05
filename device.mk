$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

# The gps config appropriate for this device
$(call inherit-product, device/common/gps/gps_us_supl.mk)

DEVICE_PACKAGE_OVERLAYS += device/samsung/g150n0/overlay

LOCAL_PATH := device/samsung/g150n0

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/selinux/file_contexts:recovery/root/prebuilt_file_contexts \
    $(LOCAL_PATH)/recovery.fstab:recovery/root/etc/recovery.fstab

$(call inherit-product, build/target/product/full.mk)

PRODUCT_NAME := samsung_g150n0
PRODUCT_BRAND := Samsung
