#!bin/bash

cd $HOME/Downloads

Archivos=(*)

for i in "${Archivos[@]}"; do
    [ -d "$i" ] && continue

    extencion="${i##*.}"

    case "$extencion" in 
        jpg|png|jpeg)
            mv "$i" $HOME/Pictures/
            echo "listo"
            ;;
        mp4)
            mv "$i" $HOME/Videos/
            ;;
    esac
done
