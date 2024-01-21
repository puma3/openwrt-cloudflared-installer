#!/usr/bin/env sh

curl -o /usr/bin/cloudflared -L https://raw.githubusercontent.com/puma3/mips-be-binaries/main/cloudflared/cloudflared-linux-mips
chmod +x /usr/bin/cloudflared
curl -o /etc/init.d/cloudflared -L https://raw.githubusercontent.com/puma3/openwrt-cloudflared-installer/main/procd-init-script/cloudflared
chmod +x /etc/init.d/cloudflared
/etc/init.d/cloudflared enable
/etc/init.d/cloudflared start
