FROM steamcmd/steamcmd
WORKDIR /app
COPY . .
#ENV STEAM_CMD_ARGS='+force_install_dir /data +login anonymous +app_update 1690800 -beta public validate +quit'
#ENV APP_ENTRYPOINT='/data/FactoryServer.sh'
ENTRYPOINT ["/app/entrypoint.sh"]