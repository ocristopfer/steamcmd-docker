#!/bin/bash
if [ -z "$STEAM_CMD_ARGS" ] || [ -z "$APP_ENTRYPOINT" ]
then
    if [ -z "$STEAM_CMD_ARGS" ]
      then echo "\$STEAM_CMD_ARGS is empty"
      else echo "\$APP_ENTRYPOINT is empty"
      fi
else
    useradd -m appuser -d /home/appuser
    chown -R appuser:appuser /tmp/dumps
    mkdir /data
    chown -R appuser:appuser /data
    su -c 'mkdir ~/.steam' appuser
    su -c 'steamcmd $STEAM_CMD_ARGS' appuser
    su -c '$APP_ENTRYPOINT' appuser    
fi