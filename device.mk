LOCAL_PATH := device/samsung/a34x

# Dynamic partitions
PRODUCT_USE_DYNAMIC_PARTITIONS := true

# VNDK
PRODUCT_TARGET_VNDK_VERSION := 33

# API
PRODUCT_SHIPPING_API_LEVEL := 32

# Boot control HAL
PRODUCT_PACKAGES += \
    android.hardware.boot@1.2-service \
    android.hardware.boot@1.2-mtkimpl \
    android.hardware.boot@1.2-mtkimpl.recovery

PRODUCT_PACKAGES_DEBUG += \
    bootctrl \
    update_engine_client

PRODUCT_PACKAGES += \
    bootctrl.mt6877 \
    bootctrl.mt6877.recovery

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

PRODUCT_SYSTEM_PROPERTY_BLACKLIST += \
    ro.product.system.model \
    ro.product.vendor.model \
    ro.product.odm.model \
    ro.product.model \
    ro.product.product.model \
    ro.product.system_ext.model
