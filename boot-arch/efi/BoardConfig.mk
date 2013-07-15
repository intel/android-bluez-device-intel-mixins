
ifndef TARGET_USE_MOKMANAGER
    $(error "Please define TARGET_USE_MOKMANAGER to specify whether the MokManager tool should be installed")
endif

ifndef TARGET_IAGO_INI
    $(error "Please define TARGET_IAGO_INI to point to the Iago configuration file for your product")
endif


TARGET_USE_IAGO := true
TARGET_IAGO_PLUGINS += bootable/iago/plugins/gummiboot

TARGET_EFI_APPS += \
	$(PRODUCT_OUT)/efi/gummiboot.efi \
	$(PRODUCT_OUT)/efi/shim.efi \

ifneq ($(TARGET_USE_MOKMANAGER),false)
TARGET_EFI_APPS += $(PRODUCT_OUT)/efi/MokManager.efi
endif

INSTALLED_EFI_BINARY_TARGET += $(TARGET_EFI_APPS)

# Extra libraries needed to be rolled into recovery updater
TARGET_RECOVERY_UPDATER_EXTRA_LIBS += libgpt_static

# Stupid EFI BIOS update requires this
RECOVERY_MIN_BATT_CAP := 30

