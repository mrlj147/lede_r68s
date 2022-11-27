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

# Modify default IP
sed -i 's/192.168.1.1/192.168.100.1/g' package/base-files/files/bin/config_generate


#smartdns
svn co https://github.com/pymumu/openwrt-smartdns package/smartdns
svn co https://github.com/pymumu/luci-app-smartdns/branches/lede package/luci-app-smartdns

#adguardhome
svn co https://github.com/kenzok8/openwrt-packages/trunk/adguardhome package/adguardhome
svn co https://github.com/kenzok8/openwrt-packages/trunk/luci-app-adguardhome package/luci-app-adguardhome


# openwrt_helloworld
svn co  https://github.com/sbwml/openwrt_helloworld package/helloworld
# mosdns
svn co  https://github.com/sbwml/luci-app-mosdns package/luci-app-mosdns


# default on dhcp.lan.force
sed -i '/exit 0/d' package/lean/default-settings/files/zzz-default-settings
echo 'uci set dhcp.lan.force=1' >>package/lean/default-settings/files/zzz-default-settings
echo 'uci commit dhcp' >>package/lean/default-settings/files/zzz-default-settings
echo 'exit 0' >>package/lean/default-settings/files/zzz-default-settings
