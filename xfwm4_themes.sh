#!/bin/bash
sudo apt update
sudo apt install wget xfce4-dev-tools make -y
mkdir ~/xfwm4themes
cd ~/xfwm4themes

wget https://git.xfce.org/archive/xfwm4-themes/snapshot/xfwm4-themes-4.10.0.tar.gz

tar -xvf xfwm4-themes-4.10.0.tar.gz
cd xfwm4-themes-4.10.0
sudo ./autogen.sh
make
sudo ./configure
sudo make install
