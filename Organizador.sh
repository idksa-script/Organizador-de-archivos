#!bin/bash

cd $HOME/Downloads

Archivos=(*)

for i in "${Archivos[@]}"; do
    [ -d "$i" ] && continue

    extencion="${i##*.}"

    case "$extencion" in 
        jpg|png|jpeg)
            mv "$i" $HOME/Pictures/
            ;;
        mp4|mkv)
            mv "$i" $HOME/Videos/
            ;;
        pdf|txt|docx)
            mv "$i" $HOME/Documents/
            ;;
    esac
done
