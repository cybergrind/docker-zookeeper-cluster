# Description

Start script is from [digitalwonderland/docker-zookeeper](https://github.com/digital-wonderland/docker-zookeeper), but based on `java:8` image instead of `digitalwonderland/base`.

## Usage:

The container can be configured via environment variables:

| Environment Variable | Zookeeper Property | Default |
| -------------------- | ------------------ | --------|
| ```ZOOKEEPER_ID``` | N/A | ```1``` |
| ```ZOOKEEPER_TICK_TIME``` | ```tickTime``` | ```2000``` |
| ```ZOOKEEPER_INIT_LIMIT``` | ```initLimit``` | ```10``` |
| ```ZOOKEEPER_SYNC_LIMIT``` | ```syncLimit``` | ```5``` |
| ```ZOOKEEPER_CLIENT_CNXNS``` | ```maxClientCnxns``` | ```60``` |
| ```ZOOKEEPER_AUTOPURGE_SNAP_RETAIN_COUNT``` | ```autopurge.snapRetainCount``` | ```3``` |
| ```ZOOKEEPER_AUTOPURGE_PURGE_INTERVAL``` | ```autopurge.purgeInterval``` | ```0``` |

To run a cluster just set more ```ZOOKEEPER_SERVER_X``` environment variables (replace ```X``` with the respective id) set to the respective ip.


