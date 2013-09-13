PRODUCT_COPY_FILES += device/intel/mixins/ethernet/init.utilitynet.sh:system/etc/init.utilitynet.sh

PRODUCT_PROPERTY_OVERRIDES += \
        persist.sys.utility_iface=eth0 \
        net.utilitynet.ip=192.168.42.1 \
        net.utilitynet.netmask=255.255.255.0

