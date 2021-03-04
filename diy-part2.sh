#!/bin/bash
#
# Copyright (c) 2019-2020 P3TERX <https://p3terx.com>
#
# This is free software, licensed under the MIT License.
# See /LICENSE for more information.
#
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part2.sh
# Description: OpenWrt DIY script part 2 (After Update feeds)
#

#1. Modify default IP
sed -i 's/192.168.1.1/192.168.5.1/g' ./openwrt/package/base-files/files/bin/config_generate

#2. Modify default hosename
sed -i 's/OpenWrt/SUPERouter/g' ./openwrt/package/base-files/files/bin/config_generate

#3. Change the login password
# $1$S2TRFyMU$E8fE0RRKR0jNadn3YLrSQ0:18690:0:99999:7::: #superlyn
# $1$V4UetPzk$CYXluq4wUazHjmCDBCqXF.:0:0:99999:7:::     #password
sed -i 's/$1$V4UetPzk$CYXluq4wUazHjmCDBCqXF.:0:0:99999:7:::/$1$S2TRFyMU$E8fE0RRKR0jNadn3YLrSQ0:18690:0:99999:7:::/g' ./openwrt/package/lean/default-settings/files/zzz-default-settings

