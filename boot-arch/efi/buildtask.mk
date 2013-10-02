# If we're using userfastboot, package up the EFI applications
# so that they can be updated
ifeq ($(TARGET_USE_USERFASTBOOT),true)

include vendor/intel/recovery_plugins/userfastboot_esp/updateblob.mk

endif

