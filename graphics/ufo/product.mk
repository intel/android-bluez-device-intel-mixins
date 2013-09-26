#
# gralloc
#
PRODUCT_PACKAGES += \
    gralloc.ufo \
    libGLES_intel    \

# hwcomposer
PRODUCT_PACKAGES += \
    hwcomposer.ufo \
    hwcomposer.default \

# 3D
PRODUCT_PACKAGES += ufo.prop
PRODUCT_PACKAGES += libGLES_ufo
PRODUCT_PACKAGES += libGLES_ufo_intel7
PRODUCT_PACKAGES += libGLES_ufo_intel7_5
PRODUCT_PACKAGES += hwc.ufo
PRODUCT_PACKAGES += libhwcservice_vpg
PRODUCT_PACKAGES += libgrallocclient
PRODUCT_PACKAGES += libgrallocgmm
PRODUCT_PACKAGES += libdrm
PRODUCT_PACKAGES += libdrm_intel
PRODUCT_PACKAGES += libvpwrapper_vpg
PRODUCT_PACKAGES += libs3cjpeg_vpg

ifneq ($(PANEL_IGNORE_LID),)
    PRODUCT_PROPERTY_OVERRIDES += init.panel_ignore_lid=$(PANEL_IGNORE_LID)
endif


