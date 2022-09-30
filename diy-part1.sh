#!/bin/bash
#
# Copyright (c) 2019-2020 P3TERX <https://p3terx.com>
#
# This is free software, licensed under the MIT License.
# See /LICENSE for more information.
#
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part1.sh
# Description: OpenWrt DIY script part 1 (Before Update feeds)
#

# Uncomment a feed source
#sed -i 's/^#\(.*helloworld\)/\1/' feeds.conf.default

# Add a feed source
#echo 'src-git helloworld https://github.com/fw876/helloworld' >>feeds.conf.default
#echo 'src-git passwall https://github.com/xiaorouji/openwrt-passwall' >>feeds.conf.default
echo 'src-git helloworld https://github.com/mrlj147/openwrt_helloworld' >>feeds.conf.default
echo 'src-git src-git mosdns https://github.com/mrlj147/luci-app-mosdns' >>feeds.conf.default


# default on dhcp.lan.force
sed -i '/exit 0/d' package/lean/default-settings/files/zzz-default-settings
echo 'uci set dhcp.lan.force=1' >>package/lean/default-settings/files/zzz-default-settings
echo 'uci commit dhcp' >>package/lean/default-settings/files/zzz-default-settings
echo 'exit 0' >>package/lean/default-settings/files/zzz-default-settings
