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



#smartdns
svn co https://github.com/pymumu/openwrt-smartdns package/smartdns
svn co https://github.com/pymumu/luci-app-smartdns/branches/lede package/luci-app-smartdns

#adguardhome
svn co https://github.com/kenzok8/openwrt-packages/trunk/adguardhome package/adguardhome
svn co https://github.com/kenzok8/openwrt-packages/trunk/luci-app-adguardhome package/luci-app-adguardhome


# openwrt_helloworld
svn co  https://github.com/sbwml/openwrt_helloworld package/helloworld


svn co https://github.com/kenzok8/openwrt-packages/trunk/luci-app-openclash package/luci-app-openclash
