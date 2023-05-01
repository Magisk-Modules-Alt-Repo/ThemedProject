 #!/sbin/sh
#
	echo "
	DON'T FORGET TO DELETE OTHER 
	PREVIOUSLY INSTALLED 
	THEMED PROJECT MODULES"
	echo "
	НЕ ЗАБУДЬТЕ УДАЛИТЬ ДРУГИЕ 
	РАНЕЕ УСТАНОВЛЕННЫЕ 
	МОДУЛИ THEMED PROJECT
	"
	
  sleep 1
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
      