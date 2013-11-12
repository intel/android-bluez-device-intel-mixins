PRODUCT_PACKAGES += \
	camera.$(TARGET_PRODUCT) \

# Note that /dev/video0 is duplicated for both front and back cameras.
# This is because the GMS Camera app will not appear in the launcher
# if there is no back-facing camera, yet the Face Unlock feature (part
# of the Houdini test regime) obviously requires a front-facing
# camera.  This is OK (for validation on development hardware), as all
# known camera usage serializes access.

ADDITIONAL_BUILD_PROPERTIES += \
	ro.camera.number = 2 \
	ro.camera.0.devname = /dev/video0 \
	ro.camera.0.facing = back \
	ro.camera.0.orientation = 0 \
	ro.camera.1.devname = /dev/video0 \
	ro.camera.1.facing = front \
	ro.camera.1.orientation = 0 \
