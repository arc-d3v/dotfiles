# We use Ly now

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
#if [ -z "${WAYLAND_DISPLAY}" ] && [ -n "$XDG_VTNR" ] && [ "${XDG_VTNR}" -eq 1 ]; then
#    exec Hyprland
#elif [ -z "${WAYLAND_DISPLAY}" ] && [ -n "$XDG_VTNR" ] && [ "${XDG_VTNR}" -eq 2 ]; then
#    export QT_QPA_PLATFORMTHEME="qt6ct"
#    export QT_QPA_PLATFORM="wayland"
#    exec niri-session -l
#elif [ -z "${WAYLAND_DISPLAY}" ] && [ -n "$XDG_VTNR" ] && [ "${XDG_VTNR}" -eq 3 ]; then
#    export XCURSOR_SIZE="24"
#    export XDG_MENU_PREFIX="arch-"
#    export XDG_SESSION_DESKTOP="sway"
#    export XDG_CURRENT_DESKTOP="sway"
#    export XDG_SESSION_TYPE="wayland"
#    export XDG_BACKEND="wayland"
#    export GTK_THEME="Tokyonight-Dark"
#    export QT_QPA_PLATFORMTHEME="qt6ct"
#    export QT_QPA_PLATFORM="wayland"
#    export XDG_SCREENSHOTS_DIR="$HOME/Pictures/Screenshots"
#
#    exec sway
#fi

