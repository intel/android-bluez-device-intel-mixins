# Crash Report (AP and BP)

# CRASH_REPORT_PARTIAL_REPORT is a switch used to disable FULL_REPORT.
# This change is used as a way to enable logcat dumps
# in crash report.
CRASH_REPORT_PARTIAL_REPORT := true

# Enable modem crash report
CRASH_REPORT_MODEM_SUPPORT := true

PRODUCT_PACKAGES += \
	crashlogd \
	crash_package \
