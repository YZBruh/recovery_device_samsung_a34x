LOCAL_PATH := device/samsung/a34x

# Dynamic partitions
PRODUCT_USE_DYNAMIC_PARTITIONS := true

# VNDK
PRODUCT_TARGET_VNDK_VERSION := 33

# API
PRODUCT_SHIPPING_API_LEVEL := 32

# fastbootd
PRODUCT_PACKAGES += \
    android.hardware.fastboot@1.0-impl-mock \
    fastbootd

# Health HAL
PRODUCT_PACKAGES += \
    android.hardware.health@2.1-impl \
    android.hardware.health@2.1-service \
    libhealthd.$(PRODUCT_PLATFORM)

PRODUCT_PACKAGES += shrink

# EROFS Tools
PRODUCT_HOST_PACKAGES += \
    liberofs \
    mkfs.erofs \
    make_erofs \
    dump.erofs \
    fsck.erofs

# Charger
PRODUCT_PACKAGES += \
    charger_res_images \
    charger_res

PRODUCT_SYSTEM_PROPERTY_BLACKLIST += \
    ro.product.system.model \
    ro.product.vendor.model \
    ro.product.odm.model \
    ro.product.model \
    ro.product.product.model \
    ro.product.system_ext.model
