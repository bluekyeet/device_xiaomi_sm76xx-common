#
# Copyright (C) 2025 The Android Open Source Project
#
# SPDX-License-Identifier: Apache-2.0
#

LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)
    LOCAL_MODULE := prebuilt
    LOCAL_MODULE_TAGS := optional
    LOCAL_MODULE_CLASS := ETC
    LOCAL_MODULE_PATH := $(TARGET_RECOVERY_ROOT_OUT)
    LOCAL_POST_INSTALL_CMD += \
        mkdir -p $(TARGET_RECOVERY_ROOT_OUT)/lib/firmware; \
        cp -rf $(LOCAL_PATH)/lib/firmware/* $(TARGET_RECOVERY_ROOT_OUT)/lib/firmware/; \
        if [ -d $(LOCAL_PATH)/lib/firmware/p16u ]; then \
            mkdir -p $(TARGET_RECOVERY_ROOT_OUT)/vendor/firmware_mnt/image; \
            cp -rf $(LOCAL_PATH)/lib/firmware/p16u/* $(TARGET_RECOVERY_ROOT_OUT)/vendor/firmware_mnt/image/; \
            mkdir -p $(TARGET_RECOVERY_ROOT_OUT)/odm/firmware/p16u; \
            cp -rf $(LOCAL_PATH)/lib/firmware/p16u/* $(TARGET_RECOVERY_ROOT_OUT)/odm/firmware/p16u/; \
        fi;
include $(BUILD_PHONY_PACKAGE)