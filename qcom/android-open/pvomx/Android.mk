LOCAL_PATH := $(call my-dir)

file := $(TARGET_OUT)/etc/01_qcomm_omx.cfg
ALL_PREBUILT += $(file)
$(file) : $(LOCAL_PATH)/proprietary/01_qcomm_omx.cfg | $(ACP)
	$(transform-prebuilt-to-target)

# Use PRODUCT_COPY_FILES to override the build target.
PRODUCT_COPY_FILES += $(LOCAL_PATH)/proprietary/libqcomm_omx.so:/system/lib/libqcomm_omx.so

include $(CLEAR_VARS)
LOCAL_MODULE := libqcomm_omx.so
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_PATH := $(TARGET_OUT_SHARED_LIBRARIES)
LOCAL_SRC_FILES := proprietary/$(LOCAL_MODULE)
OVERRIDE_BUILT_MODULE_PATH := $(TARGET_OUT_INTERMEDIATE_LIBRARIES)
#include $(BUILD_PREBUILT)
