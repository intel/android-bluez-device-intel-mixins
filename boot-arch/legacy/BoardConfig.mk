
ifndef TARGET_IAGO_INI
    $(error "Please define TARGET_IAGO_INI to point to the Iago configuration file for your product")
endif

TARGET_USE_IAGO := true
TARGET_IAGO_PLUGINS += bootable/iago/plugins/syslinux

