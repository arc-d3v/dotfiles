# WM autostart
#if uwsm check may-start; then
#    if [ -z "${WAYLAND_DISPLAY}" ] && [ -n "$XDG_VTNR" ] && [ "${XDG_VTNR}" -eq 1 ]; then
#        exec uwsm start Hyprland
#    elif [ -z "${WAYLAND_DISPLAY}" ] && [ -n "$XDG_VTNR" ] && [ "${XDG_VTNR}" -eq 2 ]; then
#        exec uwsm start niri-session finalize
#    fi
#fi
#if uwsm check may-start && uwsm select; then
#    exec uwsm start default
#fi
if [ -z "${WAYLAND_DISPLAY}" ] && [ -n "$XDG_VTNR" ] && [ "${XDG_VTNR}" -eq 2 ]; then
    exec Hyprland
elif [ -z "${WAYLAND_DISPLAY}" ] && [ -n "$XDG_VTNR" ] && [ "${XDG_VTNR}" -eq 1 ]; then
    export QT_QPA_PLATFORMTHEME="qt6ct"
    export QT_QPA_PLATFORM="wayland"
    exec niri-session -l
fi

