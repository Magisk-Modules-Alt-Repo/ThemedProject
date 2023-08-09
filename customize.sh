 #!/sbin/sh
#
	echo "
    DON'T FORGET TO INSTALL
    BOOTLOOP PROTECTOR MODULE"
	echo "
	НЕ ЗАБУДЬТЕ УСТАНОВИТЬ
	BOOTLOOP PROTECTOR
    "
    echo uninstalling app updates
  pm uninstall-system-updates pro.themed.manager 
  echo new version will be installed on boot if not found
  set_perm_recursive $MODPATH/system/bin 0 2000 0755 0755
  	
  if [ -d  /system/product/overlay ]; then
    echo "- placing overlays in product"
    mv $MODPATH/system/folder $MODPATH/system/product
  
  elif  [ -d  /system/vendor/overlay ]; then
    echo "- placing overlays in vendor"
    mv $MODPATH/system/folder $MODPATH/system/vendor
  
  else
  echo "nowhere to place overlays"
  abort
  fi;
      