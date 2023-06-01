#!/system/bin/sh
cmd package compile -m speed-profile pro.themed.manager ; cmd package compile -m speed-profile --secondary-dex pro.themed.manager ; cmd package compile --compile-layouts pro.themed.manager
exit 0
