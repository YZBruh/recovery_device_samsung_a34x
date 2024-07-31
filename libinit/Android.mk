LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

LOCAL_MODULE_TAGS := optional
LOCAL_C_INCLUDES := \
    system/core/base/include \
    system/core/init
LOCAL_SRC_FILES := libinit_a34x.cpp
LOCAL_MODULE := libinit_a34x

include $(BUILD_STATIC_LIBRARY)
