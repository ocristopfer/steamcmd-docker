# steamcmd-docker

Docker Image: 
    https://hub.docker.com/r/ocristopfer/steamcmd
    
    comand sample with satisfactory game:
        docker run -e STEAM_CMD_ARGS='+force_install_dir /data +login anonymous +app_update 1690800 -beta public validate +quit' -e APP_ENTRYPOINT='/data/FactoryServer.sh' ocristopfer/steamcmd

Docker file to run steamCmd more easilsy
    STEAM_CMD_ARGS: Comand used by steam cmd to install the game.
    APP_ENTRYPOINT: Comand for run the game

    By default de instalation dir is /data.