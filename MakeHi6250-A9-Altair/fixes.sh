#!/sbin/sh


# rw-system for Huawei device, set special properties abnd fix data dead storage
	chmod 755 /system/bin/rw-system.sh
	chown root:shell /system/bin/rw-system.sh
	chcon -v u:object_r:phhsu_exec:s0 /system/bin/rw-system.sh

	
# Dirty hack to show build properties
# To get productid : sed -nE 's/.*productid=([0-9xa-f]*).*/\1/p' /proc/cmdline
#    MODEL=$( cat /sys/firmware/devicetree/base/boardinfo/normal_product_name | tr -d '\n')
#    PROP="ro.product.model"

#	echo "#" >> /system/etc/prop.default;
#    echo "## Adding build props" >> /system/etc/prop.default;
#    echo "#" >> /system/etc/prop.default;
#    cat /system/build.prop | grep "." >> /system/etc/prop.default;
    
#	echo "#" >> /system/etc/prop.default;
#	echo "## Adding hi6250 props" >> /system/etc/prop.default;
#    echo "#" >> /system/etc/prop.default;
#    sed -i "/ro.product.model/d" /system/etc/prop.default;
#    sed -i "/ro.product.system.model/d" /system/etc/prop.default;
#    echo "ro.product.manufacturer=HUAWEI" >> /system/etc/prop.default;
#    echo "ro.product.system.model=hi6250" >> /system/etc/prop.default;
#    echo "$PROP=$MODEL" >> /system/etc/prop.default;

	 
#	echo "persist.sys.usb.config=hisuite,mtp,mass_storage" >> /system/etc/prop.default;
#    echo "sys.usb.config=mtp" >> /system/etc/prop.default;
#	echo "sys.usb.configfs=1" >> /system/etc/prop.default;
#	echo "sys.usb.controller=hisi-usb-otg" >> /system/etc/prop.default;
#	echo "sys.usb.ffs.aio_compat=true" >> /system/etc/prop.default;
#   	echo "sys.usb.ffs.ready=0" >> /system/etc/prop.default;
#	echo "sys.usb.ffs_hdb.ready=0" >> /system/etc/prop.default;
#   	echo "sys.usb.state=mtp" >> /system/etc/prop.default; 
#   	echo "debug.sf.latch_unsignaled=1" >> /system/build.prop;
#	echo "ro.surface_flinger.running_without_sync_framework=true" >> /system/build.prop;
#   echo "persist.sys.sf.native_mode=1" >> /system/etc/prop.default;
#   echo "persist.sys.sf.color_mode=1.0" >> /system/etc/prop.default;
#   echo "persist.sys.sf.color_saturation=1.1" >> /system/etc/prop.default;

    exit 0;
