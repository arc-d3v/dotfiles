# Hyprland autostart
if [ -z "${WAYLAND_DISPLAY}" ] && [ -n "$XDG_VTNR" ] && [ "${XDG_VTNR}" -eq 1 ] && uwsm check may-start; then
    exec uwsm start Hyprland
elif [ -z "${WAYLAND_DISPLAY}" ] && [ -n "$XDG_VTNR" ] && [ "${XDG_VTNR}" -eq 2 ]; then
    dbus-run-session sway
fi
#if uwsm check may-start && uwsm select; then
#    exec uwsm start default
#fi
