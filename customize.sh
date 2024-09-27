 #!/sbin/sh
#
	echo "
    THIS IS YOUR LAST CHANCE
    TO MAKE FULL SYSTEM BACKUP
    USE SWIFTBACKUP OR ELSE"
	echo "
    ЭТО ВАШ ПОСЛЕДНИЙ ШАНС
    СДЕЛАТЬ РЕЗЕРВНУЮ КОПИЮ
    ИСПОЛЬЗУЙТЕ SWIFTBACKUP
    "
  echo попытка удаления обновлений менеджера
  echo trying to uninstall user updates
  pm uninstall-system-updates pro.themed.manager 
  echo новая версия будет установлена по загрузке в случае отсутствия
  echo new version will be installed on boot if not found
  echo если нет, установите апк из архива
  echo in case not, install apk from archive manually

  AAPT2=aapt2_$(getprop ro.product.cpu.abi)
  cp -af "$MODPATH/common/$AAPT2" "$MODPATH/system/bin/aapt2" || abort "Unsupported Arch!"
   rm -rf $MODPATH/common

  set_perm_recursive $MODPATH/system/bin 0 2000 0755 0755

  if [ -d  /system/product/overlay ]; then
    echo "- оверлеи отправляються в product"
    echo "- placing overlays in product"
    mv $MODPATH/system/folder $MODPATH/system/product
  
  elif  [ -d  /system/vendor/overlay ]; then
    echo "- оверлеи отправляються в vendor"
    echo "- placing overlays in vendor"
    mv $MODPATH/system/folder $MODPATH/system/vendor
  
  else
  echo "папка для оверлеев не найдена"
  echo "nowhere to place overlays"
  abort

   fi;
      