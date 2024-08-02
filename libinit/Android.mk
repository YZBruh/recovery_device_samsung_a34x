LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)
LOCAL_MODULE := libinit_a34x
LOCAL_SRC_FILES := $(LOCAL_PATH)/libinit_a34x.cpp
LOCAL_STATIC_LIBRARIES := libbase
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_OWNER := YZBruh
LOCAL_C_INCLUDES := \
    system/core/base/include \
    system/core/init
LOCAL_RECOVERY_AVAILABLE := true

include $(BUILD_STATIC_LIBRARY)
