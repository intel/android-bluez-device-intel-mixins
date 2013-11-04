# superset of ufo binaries

# system/etc
PRODUCT_PACKAGES += ufo.prop

ifneq ($(BOARD_HAVE_GEN_GFX_SRC),true) # ufo packages when prebuilts are used

    # system/bin
    PRODUCT_PACKAGES += coreu
    PRODUCT_PACKAGES += mediainfo

    # system/lib/hw
    PRODUCT_PACKAGES += gralloc.ufo
    PRODUCT_PACKAGES += hwcomposer.default
    PRODUCT_PACKAGES += hwc.ufo

    # system/lib/egl
    PRODUCT_PACKAGES += libGLES_ufo
    PRODUCT_PACKAGES += libGLES_ufo_intel7
    PRODUCT_PACKAGES += libGLES_ufo_intel7_5

    # system/lib
    PRODUCT_PACKAGES += i965_drv_video
    PRODUCT_PACKAGES += igfxcmjit32
    PRODUCT_PACKAGES += igfxcmrt32
    PRODUCT_PACKAGES += libdrm
    PRODUCT_PACKAGES += libdrm_intel
    PRODUCT_PACKAGES += libgrallocclient
    PRODUCT_PACKAGES += libgrallocgmm
    PRODUCT_PACKAGES += libhwcservice_vpg
    PRODUCT_PACKAGES += libs3cjpeg_vpg
    PRODUCT_PACKAGES += libva
    PRODUCT_PACKAGES += libva-android
    PRODUCT_PACKAGES += libvpwrapper_vpg
    PRODUCT_PACKAGES += lib2d
    PRODUCT_PACKAGES += libcoreuclient
    PRODUCT_PACKAGES += libcoreuinterface
    PRODUCT_PACKAGES += libcoreuservice
    PRODUCT_PACKAGES += libgsmgr
    PRODUCT_PACKAGES += libsubmitdinterface
    PRODUCT_PACKAGES += libuevent

else # ufo packages when building from source

    PRODUCT_PACKAGES += ufo
    PRODUCT_PACKAGES += ufo_test

endif

ifneq ($(PANEL_IGNORE_LID),)
    PRODUCT_PROPERTY_OVERRIDES += init.panel_ignore_lid=$(PANEL_IGNORE_LID)
endif
PRODUCT_PROPERTY_OVERRIDES += ro.opengles.version = 196608

PRODUCT_COPY_FILES += device/intel/mixins/graphics/ufo/init.ufo.sh:system/etc/init.ufo.sh

