#!/bin/sh

echo '
[Desktop Entry]
Comment[en_US]=sh ~/.Autostart
Comment=sh ~/.Autostart
Exec=/usr/bin/sh ~/.Autostart
GenericName[en_US]=
GenericName=
Icon=application-default-icon
MimeType=
Name[en_US]=Autostart
Name=Autostart
Path=/home/master
StartupNotify=true
Terminal=false
TerminalOptions=
Type=Application
X-DBUS-ServiceName=
X-DBUS-StartupType=
X-GNOME-Autostart-enabled=true
X-KDE-SubstituteUID=false
X-KDE-Username=
' > ~/.config/autostart/Autostart.desktop ;

echo '
xmodmap -e "clear lock"
xmodmap -e "keycode 9 = Caps_Lock NoSymbol Caps_Lock"
xmodmap -e "keycode 66 = Escape NoSymbol Escape"
' > ~/.xmodmap ;
chmod 777 ~/.xmodmap ;

echo '
sh ~/.xmodmap ;
' > ~/.Autostart
chmod 777 ~/.Autostart
