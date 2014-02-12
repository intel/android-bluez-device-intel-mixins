#Intel miracast components
PRODUCT_PACKAGES += \
	widi.conf \
	libwidiclient \
	libwidiservice \
	libwidimedia \
	libwidirtsp \
	libwidiuibc \
	libwidiuibcjni \
	WidiInputService \
	libstagefright_hdcp \
	libwidirtspsink

ifneq ($(TARGET_BUILD_VARIANT),user)
#Intel miracast test components
PRODUCT_PACKAGES += \
	widiMultitaskingPlayer

#Intel Miracast Compliance components
PRODUCT_PACKAGES += \
	libsigmacapi \
	com.intel.widi.sigmaapi \
	libwidisigmajni \
	com.intel.widi.sigmaapi.xml \
	WirelessDisplaySigmaCapiUI \
	testsigmartspcmds

#Intel Miracast Compliance Sigma Agent
PRODUCT_PACKAGES += \
	wifi_wfa \
	libwfa \
	wfa_ca \
	wfa_dut \
	wfa_service \
	wfa_send_ping \
	wfa_send_ping6 \
	wfa_stop_ping \
	cas.pem \
	root.pem \
	wifiuser.pem
endif
