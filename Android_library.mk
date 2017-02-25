LOCAL_PATH := $(call my-dir)

##############################################################################
# libselinux
##############################################################################
include $(CLEAR_VARS)

LOCAL_MODULE := libselinux

LOCAL_CFLAGS := \
    -Wno-implicit-function-declaration \
    -Wno-unknown-attributes

LOCAL_EXPORT_C_INCLUDES := \
    src/external/selinux/libselinux/include

LOCAL_C_INCLUDES := \
    src/bionic/libc/include \
    src/external/selinux/libselinux/include \
    src/external/pcre

LOCAL_SRC_FILES := \
    src/external/selinux/libselinux/src/label.c \
    src/external/selinux/libselinux/src/freecon.c \
    src/external/selinux/libselinux/src/label_file.c \
    src/external/selinux/libselinux/src/callbacks.c \
    src/external/selinux/libselinux/src/label_support.c \
    src/external/selinux/libselinux/src/matchpathcon.c \
    src/external/selinux/libselinux/src/setrans_client.c \
    src/external/selinux/libselinux/src/sha1.c \
    src/external/selinux/libselinux/src/booleans.c \
    src/external/selinux/libselinux/src/enabled.c \
    src/external/selinux/libselinux/src/check_context.c \
    src/external/selinux/libselinux/src/init.c

include $(BUILD_STATIC_LIBRARY)

##############################################################################
# libsparse
##############################################################################
include $(CLEAR_VARS)

LOCAL_MODULE := libsparse

LOCAL_EXPORT_C_INCLUDES := \
    src/system/core/libsparse/include

LOCAL_C_INCLUDES := \
    src/system/core/libsparse/include

LOCAL_SRC_FILES += \
    src/system/core/libsparse/backed_block.c \
    src/system/core/libsparse/output_file.c \
    src/system/core/libsparse/sparse.c \
    src/system/core/libsparse/sparse_crc32.c \
    src/system/core/libsparse/sparse_err.c \
    src/system/core/libsparse/sparse_read.c

include $(BUILD_STATIC_LIBRARY)

##############################################################################
#libext4_utils
##############################################################################
include $(CLEAR_VARS)

LOCAL_MODULE := libext4_utils

LOCAL_EXPORT_C_INCLUDES := \
    src/system/extras/ext4_utils

LOCAL_C_INCLUDES := \
    src/system/core/libsparse/include \
    src/external/selinux/libselinux/include

LOCAL_SRC_FILES += \
    src/system/extras/ext4_utils/allocate.c \
    src/system/extras/ext4_utils/contents.c \
    src/system/extras/ext4_utils/crc16.c \
    src/system/extras/ext4_utils/ext4_sb.c \
    src/system/extras/ext4_utils/ext4_utils.c \
    src/system/extras/ext4_utils/extent.c \
    src/system/extras/ext4_utils/indirect.c \
    src/system/extras/ext4_utils/make_ext4fs.c \
    src/system/extras/ext4_utils/sha1.c \
    src/system/extras/ext4_utils/wipe.c

LOCAL_STATIC_LIBRARIES := selinux

include $(BUILD_STATIC_LIBRARY)

##############################################################################
# libf2fs_utils
##############################################################################
include $(CLEAR_VARS)

LOCAL_MODULE := libf2fs_utils

LOCAL_EXPORT_C_INCLUDES := \
    src/system/extras/f2fs_utils

LOCAL_C_INCLUDES := \
    src/system/core/libsparse/include \
    src/external/selinux/libselinux/include \
    src/external/f2fs-tools/include \
    src/external/f2fs-tools/mkfs

LOCAL_SRC_FILES += \
    src/system/extras/f2fs_utils/f2fs_utils.c \
    src/system/extras/f2fs_utils/f2fs_ioutils.c \
    src/system/extras/f2fs_utils/f2fs_dlutils.c

LOCAL_STATIC_LIBRARIES := selinux

include $(BUILD_STATIC_LIBRARY)

##############################################################################
# liblog
##############################################################################
include $(CLEAR_VARS)

LOCAL_MODULE := liblog

LOCAL_CFLAGS := \
    -Wno-unknown-attributes \
    -DSNET_EVENT_LOG_TAG=1397638484 -DLIBLOG_LOG_TAG=1006

LOCAL_EXPORT_C_INCLUDES := \
    src/system/core/liblog

LOCAL_C_INCLUDES := \
    src/bionic/libc/include \
    src/system/core/include

LOCAL_SRC_FILES += \
    src/system/core/liblog/logger_write.c \
    src/system/core/liblog/config_write.c \
    src/system/core/liblog/logger_lock.c \
    src/system/core/liblog/log_event_write.c \
    src/system/core/liblog/pmsg_writer.c \
    src/system/core/liblog/logd_writer.c \
    src/system/core/liblog/log_event_list.c \
    src/system/core/liblog/log_is_loggable.c \
    src/system/core/liblog/event_tag_map.c

include $(BUILD_STATIC_LIBRARY)

##############################################################################
# libbase
##############################################################################
include $(CLEAR_VARS)

LOCAL_MODULE := libbase

LOCAL_CFLAGS := \
    -Wno-unknown-attributes

LOCAL_EXPORT_C_INCLUDES := \
    src/system/core/base/include

LOCAL_C_INCLUDES := \
    src/bionic/libc/include \
    src/system/core/include \
    src/system/core/base/include

LOCAL_SRC_FILES += \
    src/system/core/base/file.cpp \
    src/system/core/base/stringprintf.cpp \
    src/system/core/base/strings.cpp \
    src/system/core/base/logging.cpp \
    src/system/core/base/errors_unix.cpp \
    src/system/core/base/parsenetaddress.cpp

include $(BUILD_STATIC_LIBRARY)

##############################################################################
# libcutils
##############################################################################
include $(CLEAR_VARS)

LOCAL_MODULE := libcutils

LOCAL_CFLAGS := \
    -Wno-unknown-attributes \
    -Wall -Wextra -std=gnu90

LOCAL_C_INCLUDES := \
    src/bionic/libc/include \
    src/system/core/include

LOCAL_SRC_FILES += \
    src/system/core/libcutils/atomic.c.arm \
    src/system/core/libcutils/config_utils.c \
    src/system/core/libcutils/fs_config.c \
    src/system/core/libcutils/canned_fs_config.c \
    src/system/core/libcutils/hashmap.c \
    src/system/core/libcutils/iosched_policy.c \
    src/system/core/libcutils/load_file.c \
    src/system/core/libcutils/native_handle.c \
    src/system/core/libcutils/open_memstream.c \
    src/system/core/libcutils/process_name.c \
    src/system/core/libcutils/record_stream.c \
    src/system/core/libcutils/sched_policy.c \
    src/system/core/libcutils/sockets.cpp \
    src/system/core/libcutils/strdup16to8.c \
    src/system/core/libcutils/strdup8to16.c \
    src/system/core/libcutils/strlcpy.c \
    src/system/core/libcutils/threads.c \
    src/system/core/libcutils/fs.c \
    src/system/core/libcutils/multiuser.c \
    src/system/core/libcutils/socket_inaddr_any_server_unix.c \
    src/system/core/libcutils/socket_local_client_unix.c \
    src/system/core/libcutils/socket_local_server_unix.c \
    src/system/core/libcutils/socket_loopback_client_unix.c \
    src/system/core/libcutils/socket_loopback_server_unix.c \
    src/system/core/libcutils/socket_network_client_unix.c \
    src/system/core/libcutils/sockets_unix.cpp \
    src/system/core/libcutils/str_parms.c \
    src/system/core/libcutils/android_reboot.c \
    src/system/core/libcutils/ashmem-dev.c \
    src/system/core/libcutils/debugger.c \
    src/system/core/libcutils/klog.c \
    src/system/core/libcutils/partition_utils.c \
    src/system/core/libcutils/properties.c \
    src/system/core/libcutils/qtaguid.c \
    src/system/core/libcutils/trace-dev.c \
    src/system/core/libcutils/uevent.c \
    src/bionic/libc/bionic/netinet_in.cpp

ifeq ($(TARGET_ARCH_ABI),armeabi-v7a)
LOCAL_SRC_FILES += \
    src/system/core/libcutils/arch-arm/memset32.S
endif

ifeq ($(TARGET_ARCH_ABI),arm64-v8a)
LOCAL_SRC_FILES += \
    src/system/core/libcutils/arch-arm64/android_memset.S
endif

ifeq ($(TARGET_ARCH_ABI),x86)
LOCAL_SRC_FILES += \
    src/system/core/libcutils/arch-x86/android_memset16.S \
    src/system/core/libcutils/arch-x86/android_memset32.S
endif

ifeq ($(TARGET_ARCH_ABI),x86_64)
LOCAL_SRC_FILES += \
    src/system/core/libcutils/arch-x86_64/android_memset16.S \
    src/system/core/libcutils/arch-x86_64/android_memset32.S
endif

LOCAL_STATIC_LIBRARIES := log
LOCAL_CLANG := true
LOCAL_SANITIZE := integer

include $(BUILD_STATIC_LIBRARY)

##############################################################################
# libusb
##############################################################################
include $(CLEAR_VARS)

LOCAL_MODULE := libusb

LOCAL_CFLAGS := \
    -Wno-implicit-function-declaration \
    -Wno-tautological-compare

LOCAL_C_INCLUDES := \
    src/external/libusb \
    src/external/libusb/libusb \
    src/external/libusb/libusb/os

LOCAL_SRC_FILES += \
    src/external/libusb/libusb/core.c \
    src/external/libusb/libusb/descriptor.c \
    src/external/libusb/libusb/io.c \
    src/external/libusb/libusb/sync.c \
    src/external/libusb/libusb/os/linux_usbfs.c

include $(BUILD_STATIC_LIBRARY)

##############################################################################
# libcrypto
##############################################################################
include $(CLEAR_VARS)

LOCAL_MODULE := libcrypto
LOCAL_EXPORT_C_INCLUDES := src/boringssl/include
LOCAL_SRC_FILES := src/boringssl/dist/$(TARGET_ARCH_ABI)/libcrypto.a

include $(PREBUILT_STATIC_LIBRARY)
LOCAL_PATH := $(call my-dir)