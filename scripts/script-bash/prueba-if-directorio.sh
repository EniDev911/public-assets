#!/bin/sh

#if [ -d ~/.configure ];
if [ -d "$HOME/.config" ];
then
echo "Si, sí existe."
else
echo "No, no existe"
fi
