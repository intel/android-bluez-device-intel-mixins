# We need to use standard EXT4 images, can't use sparse as the installer
# needs to loopback mount it. It's in a squashfs container anyway.
TARGET_USERIMAGES_USE_EXT4 := true
BOARD_FLASH_BLOCK_SIZE := 512
TARGET_USERIMAGES_SPARSE_EXT_DISABLED := false

TARGET_RECOVERY_FSTAB := device/intel/mixins/boot-arch/sfi/fstab

TARGET_MAKE_NO_DEFAULT_BOOTIMAGE ?= true

MKBOOTIMGOSIP := vendor/intel/support/mkbootimg-osip

# Enable to use Intel boot.img
INSTALLED_BOOTIMAGE_TARGET := $(PRODUCT_OUT)/boot.img
TARGET_OS_SIGNING_METHOD := none

MAKE_NO_DEFAULT_BOOTIMAGE_ITEMS = $(MKBOOTIMG) \
	$(MKBOOTIMGOSIP) \
	xfstk-stitcher \
	$(INTERNAL_BOOTIMAGE_FILES) \
	$(PRODUCT_OUT)/bootstub

# CAUTION: DO NOT CHANGE the flavor of COMMON_BOOTIMAGE_ARGS.  It must remain
# a recursively-expanded variable, i.e., it must be defined using the '=' sign.
COMMON_BOOTIMAGE_ARGS = --sign-with $(TARGET_OS_SIGNING_METHOD) \
	--bootstub $(PRODUCT_OUT)/bootstub
MAKE_NO_DEFAULT_BOOTIMAGE = $(MKBOOTIMGOSIP) \
	$(COMMON_BOOTIMAGE_ARGS) \
	$(INTERNAL_BOOTIMAGE_ARGS) \
	--product $(TARGET_DEVICE) \
	--type mos \
	--output $(INSTALLED_BOOTIMAGE_TARGET) \
	$(ADDITIONAL_BOOTIMAGE_ARGS)
