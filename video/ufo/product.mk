# libstagefrighthw
PRODUCT_PACKAGES += \
    libstagefrighthw

# Media SDK and OMX IL components
PRODUCT_PACKAGES += \
    libmfxhw32 \
    libmfx_omx_core \
    libmfx_omx_components_hw \
    libgabi++-mfx \
    libstlport-mfx

# omx components
# TODO: disabled libOMXVideoDecoderVP8 as it didn't build for haswell
# TODO: disabled libOMXVideoEncodeAVC since it does not build
PRODUCT_PACKAGES += \
    libwrs_omxil_core_pvwrapped \
    libOMXVideoDecoderAVC \
    libOMXVideoDecoderH263 \
    libOMXVideoDecoderMPEG4 \
    libOMXVideoDecoderWMV \
    libOMXVideoEncoderH263 \
    libOMXVideoEncoderMPEG4

# libmix
PRODUCT_PACKAGES += \
    libmixvbp_mpeg4 \
    libmixvbp_h264 \
    libmixvbp_vc1 \
    libmixvbp_vp8 \
    libmixvbp_h264secure \
    libintelmetadatabuffer

# libva
# TODO: disabled as they didn't build for haswell
#PRODUCT_PACKAGES += \
#    vainfo \
#    pvr_drv_video

PRODUCT_PACKAGES += \
    msvdx_fw_mfld_DE2.0.bin

# Configuration files
PRODUCT_COPY_FILES += \
    device/intel/mixins/video/ufo/wrs_omxil_components.list:system/etc/wrs_omxil_components.list \
    device/intel/mixins/video/ufo/mfx_omxil_core.conf:system/etc/mfx_omxil_core.conf

