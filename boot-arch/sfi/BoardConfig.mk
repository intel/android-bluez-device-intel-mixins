# We need to use standard EXT4 images, can't use sparse as the installer
# needs to loopback mount it. It's in a squashfs container anyway.
TARGET_USERIMAGES_USE_EXT4 := true
BOARD_FLASH_BLOCK_SIZE := 512
TARGET_USERIMAGES_SPARSE_EXT_DISABLED := false
