# Build Droidboot images for this platform
TARGET_USE_USERFASTBOOT := true

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

USERFASTBOOT_SCRATCH_SIZE := 1500

TARGET_IAGO_PLUGINS += bootable/iago/plugins/userfastboot

