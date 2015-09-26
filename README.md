# Wake on LAN

Script I use when logging in to my router for WOL for hosts in the network. Tested only on [Gargoyle](http://www.gargoyle-router.com/), which is based on [OpenWRT](https://openwrt.org/).

Nothing else is required to run it aside from what is already installed by default with Gargoyle. The WOL packet is sent using the [`wol`](https://github.com/tkren/wake-on-lan/) utility.

## Caveats

Assumes .255 for broadcast IP. You can change this in the script, or suggest I change that from being hardcoded.

## Running

I find it easier to run the script by calling the shell when using a mobile device. The default shell with Gargoyle is `ash`. 

Requires the "host" parameter, which is the name your router knows the host by. It's fuzzy search, so you can use a partial host and it will match. If you use too fuzzy of a host and it matches multiple, it will exit.

```
ash wol.sh HOST
```

Otherwise make it executable and run it as normal.

```
./wol.sh HOST
```

### Example

Full host used.

```
ash wol.sh linux-nas
```

Partial version of above host used.

```
ash wol.sh nas
```
