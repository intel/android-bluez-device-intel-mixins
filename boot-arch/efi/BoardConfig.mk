
ifndef TARGET_USE_MOKMANAGER
    $(error "Please define TARGET_USE_MOKMANAGER to specify whether the MokManager tool should be installed")
endif

ifeq ($(TARGET_STAGE_USERFASTBOOT),)
    # SW Update and provisioning images should put Droidboot on the device
    # for users to use via 'adb reboot fastboot'.
    # Policy here is to not stage it in production builds
    ifneq ($(TARGET_BUILD_VARIANT),user)
        TARGET_STAGE_USERFASTBOOT := true
    else
        TARGET_STAGE_USERFASTBOOT := false
    endif
endif

ifneq ($(TARGET_NO_MIXIN_IAGO_INI),true)
    TARGET_IAGO_INI += device/intel/mixins/boot-arch/efi/iago.ini
    ifneq ($(TARGET_STAGE_USERFASTBOOT),true)
        TARGET_IAGO_INI += device/intel/mixins/boot-arch/efi/iago.nofastboot.ini
    endif
endif

BOARD_SYSTEMIMAGE_PARTITION_SIZE ?= 1610612736

ifndef TARGET_KERNEL_ARCH
    $(error "Please set TARGET_KERNEL_ARCH so that we know what type of EFI executables to use")
endif

TARGET_USE_IAGO := true
TARGET_IAGO_PLUGINS += \
	bootable/iago/plugins/gummiboot \
	bootable/iago/plugins/syslinux \
	bootable/iago/plugins/userfastboot

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

TARGET_USERIMAGES_USE_EXT4 := true
BOARD_FLASH_BLOCK_SIZE := 512
TARGET_USERIMAGES_SPARSE_EXT_DISABLED := false

# Secure boot boot image signing
TARGET_BOOT_IMAGE_KEY_PAIR ?= device/intel/common/testkeys/DB
TARGET_BOOT_IMAGE_SIGN_CMD := device/intel/mixins/boot-arch/efi/getsignature.sh $(TARGET_BOOT_IMAGE_KEY_PAIR).pk8
BOARD_MKBOOTIMG_ARGS := --signsize 256  --signexec "$(TARGET_BOOT_IMAGE_SIGN_CMD)"

# New-style fstab which is read by fs_mgr library and used to
# mount partitions for Android and also the recovery console.
TARGET_RECOVERY_FSTAB ?= device/intel/mixins/boot-arch/efi/fstab

TARGET_USE_USERFASTBOOT := true

USERFASTBOOT_SCRATCH_SIZE ?= 1500


