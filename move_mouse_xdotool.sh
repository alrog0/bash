#!/bin/bash
## variables resolucion de la pantalla
echo "resolución pantalla:",xdpyinfo | grep dimensions
xsize=$(xdpyinfo | grep dimensions | cut -d " " -f7 | cut -d "x" -f1)
ysize=$(xdpyinfo | grep dimensions | cut -d " " -f7 | cut -d "x" -f2)
##
while true
do
        posx=$(xdotool getmouselocation --shell | grep X= | cut -d "=" -f2) # posicion actual en x (mouse)
        posy=$(xdotool getmouselocation --shell | grep Y= | cut -d "=" -f2) # posicion actual en y (mouse)
        posx=$(($posx+1)) # aumentar 1 pixel posision en x

        if [ $posx -gt $(($xsize-1)) ]
            then
                posx=$(($posx-2))
        fi
#       echo xdotool mousemove $posx $posy
        xdotool mousemove $posx $posy # mover a posisión con x aumentado
        sleep 300 # espera de 5 minutos
done
