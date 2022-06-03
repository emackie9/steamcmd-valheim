# steamcmd-valheim

Valheim server. Will update on restarts so should schedule restarts periodically to keep the server up to date. To persist server data, mount volumes at:
- `/valheim`
- `/valheim_backup`

## Environment Variables

| Name | Required | Description
|---|---|---
| `VALHEIM_SERVER_PATH`  | No | Default: `/valheim`
| `VALHEIM_SERVER_NAME`  | No | Default: `My Server`
| `VALHEIM_SERVER_WORLD` | No | Default: `Dedicated`
| `VALHEIM_SERVER_PASS`  | No | Default: `secret`
| `VALHEIM_SERVER_PUBLIC`| No | Default: `1`
| `VALHEIM_SERVER_SAV_DIR`| No | Default: `/valheim_backup`

Server exposes ports:
- 2456/udp
- 2457/udp
