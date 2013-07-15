#
# gralloc & mesa lib
#
PRODUCT_PACKAGES += \
    libGLES_mesa    \
    gralloc.$(TARGET_PRODUCT) \

# hwcomposer
PRODUCT_PACKAGES += \
    hwcomposer.$(TARGET_PRODUCT) \
    hwcomposer.default \

PRODUCT_PROPERTY_OVERRIDES += ro.opengles.version = 131072

ifneq ($(PANEL_IGNORE_LID),)
    PRODUCT_PROPERTY_OVERRIDES += init.panel_ignore_lid=$(PANEL_IGNORE_LID)
endif

