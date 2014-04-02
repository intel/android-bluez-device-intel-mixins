hsw_alc282_path := device/intel/mixins/audio/hsw_alc282

# Audio codec support
PRODUCT_COPY_FILES += \
	$(hsw_alc282_path)/audio_policy.conf:system/vendor/etc/audio_policy.conf \
	$(hsw_alc282_path)/mixer_paths_Analog_Devices.xml:system/etc/mixer_paths_Analog_Devices.xml \
	$(hsw_alc282_path)/mixer_paths_unknown.xml:system/etc/mixer_paths_unknown.xml \
	$(hsw_alc282_path)/mixer_paths_ALC282.xml:system/etc/mixer_paths_ALC282.xml \
	$(hsw_alc282_path)/mixer_paths_ALC668.xml:system/etc/mixer_paths_ALC668.xml

# Audio low latency support
PRODUCT_COPY_FILES += \
	frameworks/native/data/etc/android.hardware.audio.low_latency.xml:system/etc/permissions/android.hardware.audio.low_latency.xml

# Tinyalsa
PRODUCT_PACKAGES += \
	tinymix \
	tinyplay \
	tinycap

# Audio support
PRODUCT_PACKAGES += \
	audio.primary.$(TARGET_PRODUCT) \
	audio.a2dp.default \
	audio.hsp.default

# Remote submix device required for miracast
PRODUCT_PACKAGES += \
	audio.r_submix.default

