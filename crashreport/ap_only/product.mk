# Crash Report (AP only)

# CRASH_REPORT_PARTIAL_REPORT is a switch used to disable FULL_REPORT.
# This change is used as a way to enable logcat dumps
# in crash report
CRASH_REPORT_PARTIAL_REPORT := true

# Disable modem crash report
CRASH_REPORT_MODEM_SUPPORT :=

PRODUCT_PACKAGES += \
	crashlogd \
	crash_package \
