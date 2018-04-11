$(call inherit-product-if-exists, vendor/samsung/novel3gskt/novel3gskt-vendor.mk)

LOCAL_PATH := device/samsung/novel3gskt

# Overlays
DEVICE_PACKAGE_OVERLAYS += $(LOCAL_PATH)/overlay

# Keylayouts
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/keylayout/Generic.kl:system/usr/keylayout/Generic.kl \
    $(LOCAL_PATH)/keylayout/universal3475-keypad.kl:system/usr/keylayout/universal3475-keypad.kl

# Ramdisk
PRODUCT_PACKAGES += \
    fstab.universal3475 \
    init.universal3475.rc \
    init.universal3475.usb.rc \
    ueventd.universal3475.rc

# Samsung
PRODUCT_PACKAGES += \
    SamsungServiceMode

# Screen
TARGET_SCREEN_HEIGHT := 800
TARGET_SCREEN_WIDTH := 480

# Set default USB interface
PRODUCT_DEFAULT_PROPERTY_OVERRIDES += \
    persist.sys.usb.config=mtp

# System properties
PRODUCT_PROPERTY_OVERRIDES += \
    ro.arch=exynos3475 \
    debug.hwui.render_dirty_regions=false \
    ro.opengles.version=196608

# Build twrp for recovery instead if build variant is userdebug
ifeq ($(TARGET_BUILD_VARIANT),userdebug)
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/twrp.fstab:recovery/root/etc/twrp.fstab
endif

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/wifi/wpa_supplicant_overlay.conf:system/etc/wifi/wpa_supplicant_overlay.conf \
    $(LOCAL_PATH)/wifi/p2p_supplicant_overlay.conf:system/etc/wifi/p2p_supplicant_overlay.conf

$(call inherit-product, build/target/product/full.mk)
