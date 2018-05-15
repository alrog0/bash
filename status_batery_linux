#!/bin/bash
export DISPLAY=:0.0
export XAUTHORITY=/home/alex/.Xauthority
porcentaje_carga_bat=$(cat /sys/class/power_supply/BAT0/capacity)

if [ $porcentaje_carga_bat -gt 89 ]; then
    /usr/bin/notify-send "Bateria cargada: $porcentaje_carga_bat %"
elif
   [ $porcentaje_carga_bat -lt 18 ]; then
    /usr/bin/notify-send --urgency=critical "Bateria descargada:" "$porcentaje_carga_bat %"
else
exit 0
