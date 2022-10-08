#!/bin/sh
# https://raw.githubusercontent.com/EniDev911/assets/main/scripts/Color-scheme/Overlook.tmTheme
Theme=https://raw.githubusercontent.com/EniDev911/assets/main/scripts/sublime-text/themes/Solarized%20Space%20Predawn.sublime-theme
ColorScheme=https://raw.githubusercontent.com/EniDev911/assets/main/scripts/Color-scheme/Overlook.tmTheme
wget $Theme $ColorScheme 
mkdir -p ~/.config/sublime-text/Packages/User/Themes
mkdir -p ~/.config/sublime-text/Packages/User/Color-scheme
mv "Solarized Space Predawn.sublime-theme" ~/.config/sublime-text/Packages/User/Themes
mv "Overlook.tmTheme" ~/.config/sublime-text/Packages/User/Color-scheme
