TARGET_USE_DROIDBOOT := true

TARGET_DROIDBOOT_LIBS := libintel_droidboot
TARGET_DROIDBOOT_EXTRA_LIBS := libcmfwdl libminzip
TARGET_DROIDBOOT_USB_MODE_FASTBOOT := true
TARGET_MAKE_NO_DEFAULT_OTA_PACKAGE := true
TARGET_RELEASETOOLS_EXTENSIONS := $(HOST_OUT)/bin/releasetools.py
OTA_FROM_TARGET_FILES := $(HOST_OUT)/bin/ota_from_target_files
# Size in megabytes of Droidboot USB buffer, must be as large
# as the largest image we need to flash
DROIDBOOT_SCRATCH_SIZE := 100
DROIDBOOT_USE_INSTALLER := true
