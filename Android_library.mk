LOCAL_PATH := $(call my-dir)

##############################################################################
# libpcre
##############################################################################
include $(CLEAR_VARS)

LOCAL_MODULE := libpcre

LOCAL_CFLAGS := \
    -DHAVE_CONFIG_H \
    -Wno-self-assign \
    -Wno-unused-parameter

LOCAL_EXPORT_C_INCLUDES := \
    src/external/pcre

LOCAL_C_INCLUDES := \
    src/external/pcre \
    src/external/pcre/dist

LOCAL_SRC_FILES := \
    src/external/pcre/pcre_chartables.c \
    src/external/pcre/dist/pcre_byte_order.c \
    src/external/pcre/dist/pcre_compile.c \
    src/external/pcre/dist/pcre_config.c \
    src/external/pcre/dist/pcre_dfa_exec.c \
    src/external/pcre/dist/pcre_exec.c \
    src/external/pcre/dist/pcre_fullinfo.c \
    src/external/pcre/dist/pcre_get.c \
    src/external/pcre/dist/pcre_globals.c \
    src/external/pcre/dist/pcre_jit_compile.c \
    src/external/pcre/dist/pcre_maketables.c \
    src/external/pcre/dist/pcre_newline.c \
    src/external/pcre/dist/pcre_ord2utf8.c \
    src/external/pcre/dist/pcre_refcount.c \
    src/external/pcre/dist/pcre_string_utils.c \
    src/external/pcre/dist/pcre_study.c \
    src/external/pcre/dist/pcre_tables.c \
    src/external/pcre/dist/pcre_ucd.c \
    src/external/pcre/dist/pcre_valid_utf8.c \
    src/external/pcre/dist/pcre_version.c \
    src/external/pcre/dist/pcre_xclass.c \
    src/external/pcre/dist/pcrecpp.cc \
    src/external/pcre/dist/pcre_scanner.cc \
    src/external/pcre/dist/pcre_stringpiece.cc

include $(BUILD_STATIC_LIBRARY)

##############################################################################
# libselinux
##############################################################################
include $(CLEAR_VARS)

LOCAL_MODULE := libselinux

LOCAL_CFLAGS := \
    -DHOST

LOCAL_EXPORT_C_INCLUDES := \
    src/external/libselinux/include

LOCAL_C_INCLUDES := \
    src/external/libselinux/include

LOCAL_SRC_FILES := \
    src/external/libselinux/src/callbacks.c \
    src/external/libselinux/src/check_context.c \
    src/external/libselinux/src/freecon.c \
    src/external/libselinux/src/init.c \
    src/external/libselinux/src/label.c \
    src/external/libselinux/src/label_file.c \
    src/external/libselinux/src/label_android_property.c \
    src/external/libselinux/src/label_support.c

LOCAL_STATIC_LIBRARIES := pcre

include $(BUILD_STATIC_LIBRARY)

##############################################################################
# libsparse
##############################################################################
include $(CLEAR_VARS)

LOCAL_MODULE := libsparse

LOCAL_CFLAGS := \
    -Werror

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

LOCAL_CFLAGS := \
    -fno-strict-aliasing

LOCAL_EXPORT_C_INCLUDES := \
    src/system/extras/ext4_utils

LOCAL_SRC_FILES += \
    src/system/extras/ext4_utils/make_ext4fs.c \
    src/system/extras/ext4_utils/ext4fixup.c \
    src/system/extras/ext4_utils/ext4_utils.c \
    src/system/extras/ext4_utils/allocate.c \
    src/system/extras/ext4_utils/contents.c \
    src/system/extras/ext4_utils/extent.c \
    src/system/extras/ext4_utils/indirect.c \
    src/system/extras/ext4_utils/sha1.c \
    src/system/extras/ext4_utils/wipe.c \
    src/system/extras/ext4_utils/crc16.c \
    src/system/extras/ext4_utils/ext4_sb.c

LOCAL_STATIC_LIBRARIES := selinux sparse

include $(BUILD_STATIC_LIBRARY)

ifeq ($(SUPPORT_F2FS),yes)
##############################################################################
# libext2_uuid
##############################################################################
include $(CLEAR_VARS)

LOCAL_MODULE := libext2_uuid

LOCAL_SRC_FILES := \
    src/external/e2fsprogs/lib/uuid/clear.c \
    src/external/e2fsprogs/lib/uuid/compare.c \
    src/external/e2fsprogs/lib/uuid/copy.c \
    src/external/e2fsprogs/lib/uuid/gen_uuid.c \
    src/external/e2fsprogs/lib/uuid/isnull.c \
    src/external/e2fsprogs/lib/uuid/pack.c \
    src/external/e2fsprogs/lib/uuid/parse.c \
    src/external/e2fsprogs/lib/uuid/unpack.c \
    src/external/e2fsprogs/lib/uuid/unparse.c \
    src/external/e2fsprogs/lib/uuid/uuid_time.c

LOCAL_C_INCLUDES := \
    src/external/e2fsprogs/lib

LOCAL_EXPORT_C_INCLUDES := \
    src/external/e2fsprogs/lib \
    src/external/e2fsprogs

LOCAL_CFLAGS := -O2 -g -W -Wall \
    -Wno-unused-parameter \
    -Wno-unused-function \
	-DHAVE_INTTYPES_H \
	-DHAVE_UNISTD_H \
	-DHAVE_ERRNO_H \
	-DHAVE_NETINET_IN_H \
	-DHAVE_SYS_IOCTL_H \
	-DHAVE_SYS_MMAN_H \
	-DHAVE_SYS_MOUNT_H \
	-DHAVE_SYS_PRCTL_H \
	-DHAVE_SYS_RESOURCE_H \
	-DHAVE_SYS_SELECT_H \
	-DHAVE_SYS_STAT_H \
	-DHAVE_SYS_TYPES_H \
	-DHAVE_STDLIB_H \
	-DHAVE_STRDUP \
	-DHAVE_MMAP \
	-DHAVE_UTIME_H \
	-DHAVE_GETPAGESIZE \
	-DHAVE_LSEEK64 \
	-DHAVE_LSEEK64_PROTOTYPE \
	-DHAVE_EXT2_IOCTLS \
	-DHAVE_LINUX_FD_H \
	-DHAVE_TYPE_SSIZE_T \
	-DHAVE_SYS_TIME_H \
        -DHAVE_SYS_PARAM_H \
	-DHAVE_SYSCONF

include $(BUILD_STATIC_LIBRARY)

##############################################################################
# libf2fs_utils
##############################################################################
include $(CLEAR_VARS)

LOCAL_MODULE := libf2fs_utils

LOCAL_CFLAGS := \
    -DANDROID_HOST_BUILD \
    -DF2FS_MAJOR_VERSION=1 \
    -DF2FS_MINOR_VERSION=4 \
    -DF2FS_TOOLS_VERSION=\"1.4.0\" \
    -DF2FS_TOOLS_DATE=\"2014-10-18\" \
    -Wno-unused-parameter

LOCAL_EXPORT_C_INCLUDES := \
    src/system/extras/f2fs_utils \
    src/external/f2fs-tools/include \
    src/external/f2fs-tools/mkfs

LOCAL_C_INCLUDES := \
    src/external/f2fs-tools/include \
    src/external/f2fs-tools/mkfs

LOCAL_SRC_FILES += \
    src/system/extras/f2fs_utils/f2fs_utils.c \
    src/system/extras/f2fs_utils/f2fs_ioutils.c \
    src/external/f2fs-tools/lib/libf2fs.c \
    src/external/f2fs-tools/mkfs/f2fs_format.c \

LOCAL_STATIC_LIBRARIES := ext2_uuid selinux sparse

include $(BUILD_STATIC_LIBRARY)
endif # SUPPORT_F2FS

##############################################################################
# liblog
##############################################################################
include $(CLEAR_VARS)

LOCAL_MODULE := liblog_fake

LOCAL_CFLAGS := \
    -DFAKE_LOG_DEVICE=1 \
    -DSNET_EVENT_LOG_TAG=1397638484 -DLIBLOG_LOG_TAG=1005 \
    -Werror -fvisibility=hidden

LOCAL_EXPORT_C_INCLUDES := \
    src/system/core/liblog

LOCAL_C_INCLUDES := \
    src/system/core/include

LOCAL_SRC_FILES += \
    src/system/core/liblog/log_event_list.c \
    src/system/core/liblog/log_event_write.c \
    src/system/core/liblog/logger_write.c \
    src/system/core/liblog/config_write.c \
    src/system/core/liblog/logger_name.c \
    src/system/core/liblog/logger_lock.c \
    \
    src/system/core/liblog/fake_log_device.c \
    src/system/core/liblog/fake_writer.c \
    src/system/core/liblog/event_tag_map.c

include $(BUILD_STATIC_LIBRARY)

##############################################################################
# libbase
##############################################################################
include $(CLEAR_VARS)

LOCAL_MODULE := libbase

LOCAL_CPPFLAG := \
    -Wall \
    -Wextra \
    -Werror \
    -Wexit-time-destructors \

LOCAL_CFLAGS := \
    -DANDROID_HOST_BUILD \
    -D__USE_BSD

LOCAL_EXPORT_C_INCLUDES := \
    src/system/core/base/include

LOCAL_C_INCLUDES := \
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
    -Werror -Wall -Wextra -std=gnu90 -Wno-typedef-redefinition

LOCAL_CPPFLAGS := -std=c++14

LOCAL_C_INCLUDES := \
    src/system/core/include \
    $(NDK_ROOT)/platforms/$(TARGET_PLATFORM)/arch-$(TARGET_ARCH)/usr/include

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
    src/system/core/libcutils/qtaguid.c \
    src/system/core/libcutils/trace-dev.c \
    src/system/core/libcutils/uevent.c

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

LOCAL_SANITIZE := integer

include $(BUILD_STATIC_LIBRARY)

##############################################################################
# libcrypto
##############################################################################
include $(CLEAR_VARS)

LOCAL_MODULE := libcrypto
LOCAL_EXPORT_C_INCLUDES := src/boringssl/include
LOCAL_SRC_FILES := src/boringssl/dist/$(TARGET_ARCH_ABI)/libcrypto.a

include $(PREBUILT_STATIC_LIBRARY)

##############################################################################
# libdecrepit
##############################################################################
include $(CLEAR_VARS)

LOCAL_MODULE := libdecrepit
LOCAL_EXPORT_C_INCLUDES := src/boringssl/include
LOCAL_SRC_FILES := src/boringssl/dist/$(TARGET_ARCH_ABI)/libdecrepit.a

include $(PREBUILT_STATIC_LIBRARY)
