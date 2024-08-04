LOCAL_PATH := device/samsung/a34x

# Dynamic partitions
PRODUCT_USE_DYNAMIC_PARTITIONS := true

# VNDK
PRODUCT_TARGET_VNDK_VERSION := 33

# API
PRODUCT_SHIPPING_API_LEVEL := $(if $(filter 30,$(BOARD_SYSTEMSDK_VERSIONS)),30,32)

# Soong
PRODUCT_SOONG_NAMESPACES += $(LOCAL_PATH)

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

# TWRP TZData
PRODUCT_PACKAGES_ENG += \
    tzdata_twrp

# EROFS Tools
PRODUCT_HOST_PACKAGES_ENG += \
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
