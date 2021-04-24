#!/bin/sh

# Force Mozilla and Qt to use Wayland
export MOZ_ENABLE_WAYLAND=1
export QT_QPA_PLATFORM=wayland

# Force Qt to use the theme from qt5ct
export QT_QPA_PLATFORMTHEME=qt5ct

# Fcitx
export IMSETTINGS_INTEGRATE_DESKTOP=yes
export IMSETTINGS_MODULE=fcitx
export INPUT_METHOD=fcitx
export GTK_IM_MODULE=fcitx
export XMODIFIERS=@im=fcitx
export QT_IM_MODULE=fcitx

# Finally start sway with dbus
exec dbus-run-session sway
