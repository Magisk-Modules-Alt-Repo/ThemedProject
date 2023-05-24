#!/system/bin/sh

disable(){
for ol in $(cmd overlay list | grep -E '^.x..themed.'  | sed -E 's/^....//'); do cmd overlay disable $ol; done
}

while [[ "$(getprop sys.boot_completed)" != "1" ]]; do
    timeout 1 getevent -l -q | grep "KEY_VOLUMEUP" && disable
done

exit 0
