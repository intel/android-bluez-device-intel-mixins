
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

TARGET_EFI_APPS += \
	$(PRODUCT_OUT)/efi/gummiboot.efi \
	$(PRODUCT_OUT)/efi/shim.efi

ifneq ($(TARGET_USE_MOKMANAGER),false)
TARGET_EFI_APPS += $(PRODUCT_OUT)/efi/MokManager.efi
endif

# Add these to the OTA target-files-package
INSTALLED_RADIOIMAGE_TARGET += $(TARGET_EFI_APPS)

# Extra libraries needed to be rolled into recovery updater
TARGET_RECOVERY_UPDATER_EXTRA_LIBS += libgpt_static

# Stupid EFI BIOS update requires this
RECOVERY_MIN_BATT_CAP := 30

# We need to use standard EXT4 images, can't use sparse as the installer
# needs to loopback mount it. It's in a squashfs container anyway.
TARGET_USERIMAGES_USE_EXT4 := true
BOARD_FLASH_BLOCK_SIZE := 512
TARGET_USERIMAGES_SPARSE_EXT_DISABLED := true

$(call dist-for-goals,droid,$(PRODUCT_OUT)/live.img)
$(call dist-for-goals,droid,$(PRODUCT_OUT)/legacy.iso)

