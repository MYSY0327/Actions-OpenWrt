#!/bin/bash
#
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part1.sh
# Description: OpenWrt DIY script part 1 (Before Update feeds)
#
# feeds.conf.default 已在仓库根目录配置好，workflow 会自动 mv 进 openwrt/
# 如果需要追加 feed 源，取消下面注释即可:
#
# echo 'src-git xxx https://github.com/xxx/xxx.git' >>feeds.conf.default

# luci-theme-argon / luci-app-argon-config 是单包仓库（Makefile 位于仓库根目录），
# 不符合 feeds 的子目录规范，直接克隆到 package/ 下由构建系统扫描
git clone --depth 1 https://github.com/jerrykuku/luci-theme-argon.git package/luci-theme-argon
git clone --depth 1 https://github.com/jerrykuku/luci-app-argon-config.git package/luci-app-argon-config
