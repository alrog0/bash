#!/bin/bash
# ruta iconos /usr/share/icons/gnome/32x32/status
export DISPLAY=:0.0
export XAUTHORITY1=/home/$USER/.Xauthority
porcentaje_carga_bat=$(cat /sys/class/power_supply/BAT0/capacity)
fuenteacdc=$(cat /sys/class/power_supply/BAT0/status)

if [ $porcentaje_carga_bat -gt 89 ] && [ $fuenteacdc != "Charging" ] ; then
    /usr/bin/notify-send --expire-time=45000 -i "battery-full-charged" 'Bateria Cargada!!' "$porcentaje_carga_bat %"
elif
   [ $porcentaje_carga_bat -lt 18 ] && [ $fuenteacdc != "Charging" ] ; then
    /usr/bin/notify-send --expire-time=45000 -i "battery-caution" 'Bateria Descargada!!' "$porcentaje_carga_bat %"
else
exit 0
fi
