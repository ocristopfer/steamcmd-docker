# Security policy

The [`ocristopfer/steamcmd`](https://hub.docker.com/r/ocristopfer/steamcmd) image
downloads a game server with SteamCMD and runs it. Please report security
issues privately.

## Reporting a vulnerability

Do **not** open a public issue. Use GitHub's private vulnerability reporting
(the "Report a vulnerability" button on the repository's **Security** tab) and include:

- what is affected (`Dockerfile`, `entrypoint.sh`, the published image);
- steps to reproduce, or a proof of concept;
- the image tag or digest, or the commit you built from.

You should get an answer within a few days. Fixes are published on `main` and
in a new `latest` image.

## Supported versions

Only the latest image (and the `main` branch) receives fixes.

## Scope

In scope: what this repository adds on top of the base image — for example the
game server ending up running as root, unsafe file permissions on `/data`, or
`STEAM_CMD_ARGS`/`APP_ENTRYPOINT` being handled in a way that lets someone
other than the container's owner run commands.

Out of scope: vulnerabilities in SteamCMD, the
[`steamcmd/steamcmd`](https://hub.docker.com/r/steamcmd/steamcmd) base image or
the game servers themselves — report those to their maintainers.

## Usage notes

- `STEAM_CMD_ARGS` and `APP_ENTRYPOINT` are executed as given: only set them from
  trusted configuration.
- Prefer `+login anonymous`. If a game needs a Steam account, use a dedicated
  account without purchases or payment methods, since its credentials end up in
  the container environment.
- Only publish the ports the game actually needs.
