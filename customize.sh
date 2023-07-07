 #!/sbin/sh
#
	echo "
    IN CASE OF BOOTLOOP 
    AFTER VENDOR LOGO SHOWS 
    PRESS/HOLD VOL+ BUTTON TO DISABLE 
    ALL THEMED OVERLAYS"
	echo "
	   В СЛУЧАЕ БУТЛУПА
    ПОСЛЕ ПОКАЗА ЛОГОТИПА ВЕНДОРА
    НАЖМИТЕ/УДЕРЖИВАЙТЕ КНОПКУ ГРОМКОСТЬ+, 
    ЧТОБЫ ОТКЛЮЧИТЬ
    ВСЕ ОВЕРЛЕИ THEMED
    "
    echo uninstalling app updates
  pm uninstall pro.themed.manager 
  echo new version will be installed on boot if not found
  
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
      