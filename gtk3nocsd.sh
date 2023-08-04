#!/bin/bash

sudo apt update
sudo apt install gtk3-nocsd -y

echo 'export GTK_CSD=0' >> ~/.bashrc
echo 'export LD_PRELOAD=/usr/lib/x86_64-linux-gnu/libgtk3-nocsd.so.0' >> ~/.bashrc

echo '  if [ -n "$STARTUP" ]; then
    BASESTARTUP=${STARTUP%% *}
    BASESTARTUP=${BASESTARTUP##*/}
    if [ "$BASESTARTUP" = x-session-manager ]; then
      BASESTARTUP=$(basename $(readlink /etc/alternatives/x-session-manager))
    fi
    if [ x"$BASESTARTUP" = x"${BASESTARTUP#gnome-session}" ] ; then
      export GTK_CSD=0
      STARTUP="env LD_PRELOAD=/path/to/libgtk3-nocsd.so.0 $STARTUP"
    fi
  fi' >> ~/.xsessionrc