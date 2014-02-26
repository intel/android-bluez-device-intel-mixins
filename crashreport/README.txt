Crash Report on ABT
--------------
Options:

ap_bp:   Enable crash report on both of application processor and modem chip.
ap_only: Enable crash report on application processor side only.
disable: Crash report is not included in target build.

Notes:
1. Due to the lack of build support of Intel platforms that are shipped with IFX
modem, the "ap_bp" option is not tested.

2. The crashreport "ap_only" is included in all but "user" target builds,
   see device/intel/common/common.mk:

     ifneq ($(TARGET_BUILD_VARIANT),user)
     ..........
     # Crash Report
     $(call inherit-mixin, crashreport, ap_only)
     endif

The default choice is linked to "disable" so crash report will not be available in
the "user" target build.

