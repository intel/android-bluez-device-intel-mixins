# superset of ufo binaries

# system/etc
PRODUCT_PACKAGES += ufo.prop

ifneq ($(BOARD_HAVE_GEN_GFX_SRC),true) # ufo packages when prebuilts are used

    # UFO prebuilts
    PRODUCT_PACKAGES += ufo_prebuilts

else # ufo packages when building from source

    PRODUCT_PACKAGES += ufo
    PRODUCT_PACKAGES += ufo_test

endif

ifneq ($(PANEL_IGNORE_LID),)
    PRODUCT_PROPERTY_OVERRIDES += init.panel_ignore_lid=$(PANEL_IGNORE_LID)
endif
PRODUCT_PROPERTY_OVERRIDES += ro.opengles.version = 196608

PRODUCT_COPY_FILES += device/intel/mixins/graphics/ufo/init.ufo.sh:system/etc/init.ufo.sh

