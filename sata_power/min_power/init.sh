#!/system/bin/sh

for dirname in /sys/class/scsi_host/host* ; do
        if [ -e $dirname/link_power_management_policy ]
        then
                echo min_power > $dirname/link_power_management_policy
        fi
done
