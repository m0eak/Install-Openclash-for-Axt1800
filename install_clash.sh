#!/bin/sh
opkg update

wget -O /tmp/openclash.ipk https://cdn.jsdelivr.net/gh/vernesong/OpenClash/blob/package/master/luci-app-openclash_0.46.079_all.ipk
opkg install /tmp/openclash.ipk
rm -f /tmp/openclash.ipk
