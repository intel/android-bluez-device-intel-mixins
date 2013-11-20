#
# Audio HAL
#

TARGET_KERNEL_CONFIG_OVERRIDES += device/intel/mixins/audio/mobile/kernel_defconfig_overlay

# hardware HAL
PRODUCT_PACKAGES += \
    audio_hal_configurable \
    libaudioresample \
    audio.a2dp.default \
    vibrator.$(PRODUCT_NAME) \
    audio.usb.default

# tinyalsa tools
PRODUCT_PACKAGES += \
    tinyplay \
    tinycap \
    tinymix \
    tinypcminfo

# parameter-framework files
PRODUCT_PACKAGES += \
    parameter-framework.audio.bayleybay \
    libparameter \
    parameter-connector-test \
    libxmlserializer \
    liblpe-subsystem \
    libtinyamixer-subsystem \
    libtinyalsactl-subsystem \
    libfs-subsystem \
    libproperty-subsystem \
    parameter

#hdmi audio HAL
PRODUCT_PACKAGES += \
   audio.hdmi.$(PRODUCT_NAME)


#NXP audio effects
PRODUCT_PACKAGES += \
    libbundlewrapper.so \
    libreverbwrapper.so \
    libxmlparser.so \
    LvmDefaultControlParams.xml \
    LvmSessionConfigurationMinus1.xml

# remote-process for parameter-framework tuning interface
ifneq (, $(findstring "$(TARGET_BUILD_VARIANT)", "eng" "userdebug"))
PRODUCT_PACKAGES += \
    libremote-processor \
    remote-process
endif

# SpeechRecorder for eng build variant
ifneq ($(filter $(TARGET_BUILD_VARIANT),eng),)
PRODUCT_PACKAGES += \
    SpeechRecorder
endif

# AudioToolBox (for eng builds)
#ifneq (, $(findstring "$(TARGET_BUILD_VARIANT)", "eng"))
# PRODUCT_PACKAGES += \
#     AudioToolBox
#endif


