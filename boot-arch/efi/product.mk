PRODUCT_PACKAGES += efibootmgr \
                    pstore-clean

# tools for Iago installer
$(call inherit-product, bootable/iago/iago.mk)

