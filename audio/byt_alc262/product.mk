#
# Audio HAL
#

byt_alc262_path := device/intel/mixins/audio/byt_alc262

TARGET_KERNEL_CONFIG_OVERRIDES += $(byt_alc262_path)/kernel_defconfig_overlay

# Hardware HAL
PRODUCT_PACKAGES += \
    audio_hal_configurable \
    libaudioresample \
    audio.a2dp.default \
    audio.hsp.default \
    vibrator.$(PRODUCT_NAME) \
    audio.usb.$(PRODUCT_NAME)

# Tinyalsa tools
PRODUCT_PACKAGES += \
    tinyplay \
    tinycap \
    tinymix \
    tinypcminfo

# Parameter-framework files
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

# HDMI audio HAL
PRODUCT_PACKAGES += \
   audio.hdmi.$(PRODUCT_NAME)


# NXP audio effects
PRODUCT_PACKAGES += \
    libbundlewrapper.so \
    libreverbwrapper.so \
    libxmlparser.so \
    LvmDefaultControlParams.xml \
    LvmSessionConfigurationMinus1.xml

# Remote submix audio
PRODUCT_PACKAGES += \
       audio.r_submix.default

# Specific management of audio_effects.conf
PRODUCT_COPY_FILES += \
    $(byt_alc262_path)/audio_effects.conf:system/vendor/etc/audio_effects.conf

# Audio policy file
PRODUCT_COPY_FILES += \
    $(byt_alc262_path)/audio_policy.conf:system/etc/audio_policy.conf

# Audio asound file
PRODUCT_COPY_FILES += \
    $(byt_alc262_path)/asound.conf:system/etc/asound.conf

# Remote-process for parameter-framework tuning interface
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

# FIXME why this this commented out?
# AudioToolBox (for eng builds)
#ifneq (, $(findstring "$(TARGET_BUILD_VARIANT)", "eng"))
# PRODUCT_PACKAGES += \
#     AudioToolBox
#endif


