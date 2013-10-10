
ifndef TARGET_USE_MOKMANAGER
    $(error "Please define TARGET_USE_MOKMANAGER to specify whether the MokManager tool should be installed")
endif

ifndef TARGET_IAGO_INI
    $(error "Please define TARGET_IAGO_INI to point to the Iago configuration file for your product")
endif

ifndef TARGET_KERNEL_ARCH
    $(error "Please set TARGET_KERNEL_ARCH so that we know what type of EFI executables to use")
endif

TARGET_USE_IAGO := true
TARGET_IAGO_PLUGINS += \
	bootable/iago/plugins/gummiboot \
	bootable/iago/plugins/syslinux

# Adds edify commands swap_entries and copy_partition for robust
# update of the EFI system partition
TARGET_RECOVERY_UPDATER_LIBS += libupdater_esp

# Extra libraries needed to be rolled into recovery updater
# libgpt_static is needed by libupdater_esp
TARGET_RECOVERY_UPDATER_EXTRA_LIBS += libgpt_static

# Recovery UI library. Compiled with or without SD Card support based
# on RECOVERY_HAVE_SD_CARD which is specified in the 'storage' mixin
TARGET_RECOVERY_UI_LIB := libbigcore_recovery_ui

# If using userfastboot, we want this plugin to update the
# EFI System Partition
TARGET_USERFASTBOOT_LIBS += libufb_esp

# We need to use standard EXT4 images, can't use sparse as the installer
# needs to loopback mount it. It's in a squashfs container anyway.
TARGET_USERIMAGES_USE_EXT4 := true
BOARD_FLASH_BLOCK_SIZE := 512
TARGET_USERIMAGES_SPARSE_EXT_DISABLED := true

# Secure boot boot image signing
TARGET_BOOT_IMAGE_KEY_PAIR ?= build/target/product/security/testkey
TARGET_BOOT_IMAGE_SIGN_CMD := vendor/intel/support/getsignature.sh $(TARGET_BOOT_IMAGE_KEY_PAIR).pk8
BOARD_MKBOOTIMG_ARGS := --signsize 256  --signexec "$(TARGET_BOOT_IMAGE_SIGN_CMD)"

