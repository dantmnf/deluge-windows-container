A Windows container template for running Deluge in your Windows-based all-in-one home server.

## Why Windows Container?

Windows has stable and well-adopted APIs for full asynchronous file I/O, which may benefit BitTorrent clients.

Deluge is based on libtorrent and asio, which uses native asynchronous file I/O on Windows.

### Other clients?

* Transmission uses libevent, which doesn't benefit from Windows I/O model.
* qBittorrent doesn't provide prebuilt headless (a.k.a `nox`) binaries for Windows.

## Deployment

You need [Docker](https://learn.microsoft.com/en-us/virtualization/windowscontainers/quick-start/set-up-environment?tabs=dockerce#windows-server-1) and [standalone Docker Compose](https://github.com/docker/compose/releases) to deploy the container.

Create your own `.env` file based on `example.env` and run `docker-compose up -d`.

Only bridged (transparent) network is supported. For stable IPv6 address assignment, you may need to disable address randomization __on host__:

```powershell
# This will change your SLAAC IPv6 address
Set-NetIPv6Protocol -RandomizeIdentifiers Disabled
```

