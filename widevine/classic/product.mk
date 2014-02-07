$(call inherit-product-if-exists, vendor/google/PRIVATE/widevinedrm/widevine.mk)
$(call inherit-product-if-exists, vendor/intel/PRIVATE/DRM/widevine/$(TARGET_BOARD_PLATFORM)/widevine.mk)
