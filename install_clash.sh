#!/bin/sh
opkg update

opkg install dnsmasq-full --download-only && opkg remove dnsmasq && opkg install dnsmasq-full --cache . && rm *.ipk

opkg install wget-ssl coreutils-nohup bash iptables curl ca-certificates ipset ip-full iptables-mod-tproxy iptables-mod-extra libcap libcap-bin ruby ruby-yaml kmod-tun luci-compat libcurl4

wget -O /tmp/openclash.ipk https://cdn.jsdelivr.net/gh/vernesong/OpenClash@v0.45.78-beta/luci-app-openclash_0.45.78-beta_all.ipk
opkg install /tmp/openclash.ipk
rm -f /tmp/openclash.ipk
