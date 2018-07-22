# OpenWRT Wake-on-LAN CLI Script

Script I use when logging in to my router for WoL for hosts in the network.

## Install

Log into your router as root, put the script in `/usr/sbin`, optionally
without the `.sh` extension, then make it executable.

### Scripted
```sh
wget -O wol https://raw.githubusercontent.com/austinbutler/openwrt-wol-cli/master/wol.sh && \
mv wol /usr/sbin/ && \
chmod u+x /usr/sbin/wol
```

## Running

Requires a hostname for the first parameter, which is the name your router
knows the host by.

```
wol desktop
```
