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

# Modify default IP
#sed -i 's/192.168.1.1/192.168.50.5/g' package/base-files/files/bin/config_generate#1. Modify default IP
#1 IP address
sed -i 's/192.168.1.1/192.168.5.1/g' package/base-files/files/bin/config_generate

#2 password
sed -i 's/root::0:0:99999:7:::/root:$1$S2TRFyMU$E8fE0RRKR0jNadn3YLrSQ0:18690:0:99999:7:::/g' package/base-files/files/etc/shadow

#3. Modify default hosename
sed -i 's/OpenWrt/SUPERouter/g' package/base-files/files/bin/config_generate
