LOCAL_PATH := $(call my-dir)

ifneq ($(filter novel3gskt,$(TARGET_DEVICE)),)
    include $(call all-makefiles-under,$(LOCAL_PATH))
endif
