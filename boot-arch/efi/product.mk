PRODUCT_PACKAGES += pstore_clean \
                    charger \
                    charger_res_images

PRODUCT_COPY_FILES += \
	device/intel/mixins/boot-arch/efi/fstab:root/fstab.$(TARGET_PRODUCT) \

include bootable/iago/iago.mk

