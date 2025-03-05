#!bin/bash

cd $HOME/Downloads

Archivos=(*)

for i in "${Archivos[@]}"; do
    echo "$i"
done
