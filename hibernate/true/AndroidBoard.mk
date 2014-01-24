ifneq ($(TARGET_NO_MIXIN_IAGO_INI),true)

swap_iago_ini := $(PRODUCT_OUT)/iago/iago-hibernate.ini

$(swap_iago_ini): device/intel/mixins/hibernate/true/iago.ini.in
	$(hide) mkdir -p $(dir $@)
	$(hide) sed "s|SWAPSIZE|$(BOARD_SWAP_PARTITION_SIZE)|" $^ > $@

TARGET_IAGO_INI += $(swap_iago_ini)

endif

