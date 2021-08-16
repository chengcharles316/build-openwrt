#!/bin/bash
# Copyright (c) 2019-2020 P3TERX <https://p3terx.com>
#

# 基本不需要添加啥插件了,我搜集了各位大神的插件都集成一个软件包直接打入源码里面了
# 要了解增加了什么东西，就到我的专用软件包里面看看看吧，如果还是没有你需要的插件，请不要一下子就拉取别人的插件包
# 相同的文件都拉一起，因为有一些可能还是其他大神修改过的容易造成编译错误的
# 想要什么插件就单独的拉取什么插件就好，或者告诉我，我把插件放我的插件包就行了
# 软件包地址：https://github.com/281677160/openwrt-package
#git clone https://github.com/weweyes/OpenAppFilter.git package/luci-app-oaf

#git clone https://github.com/vernesong/OpenClash package/luci-app-openclash

# 添加applications
git clone --depth=1 https://github.com/destan19/OpenAppFilter.git package/extraapp/luci-app-oaf
git clone --depth=1 https://github.com/sirpdboy/luci-app-advanced package/extraapp/luci-app-advanced
git clone --depth=1 https://github.com/sirpdboy/luci-app-autotimeset package/extraapp/luci-app-autotimeset
git clone --depth=1 https://github.com/weweyes/luci-theme-opentopd-backup package/extraapp/luci-theme-opentopd

#添加主题theme
git clone --depth=1 https://github.com/i028/luci-theme-netgear package/extratheme/luci-theme-netgear
git clone --depth=1 https://github.com/xiaoqingfengATGH/luci-theme-infinityfreedom package/extratheme/luci-theme-infinityfreedom

 #添加动态你DDNS
git clone --depth 1 https://github.com/small-5/ddns-scripts-dnspod package/lean/ddns-scripts_dnspod
git clone --depth 1 https://github.com/small-5/ddns-scripts-aliyun package/lean/ddns-scripts_aliyun
svn co https://github.com/openwrt/packages/branches/openwrt-18.06/net/ddns-scripts feeds/packages/net/ddns-scripts
svn co https://github.com/openwrt/luci/branches/openwrt-18.06/applications/luci-app-ddns feeds/luci/applications/luci-app-ddns
svn co https://github.com/QiuSimons/OpenWrt_luci-app/trunk/others/luci-app-tencentddns package/lean/luci-app-tencentddns
svn co https://github.com/kenzok8/openwrt-packages/trunk/luci-app-aliddns feeds/luci/applications/luci-app-aliddns
ln -sf ../../../feeds/luci/applications/luci-app-aliddns ./package/feeds/luci/luci-app-aliddns

sed -i '$a src-git lienol https://github.com/Lienol/openwrt-package' feeds.conf.default
sed -i '$a src-git helloworld https://github.com/fw876/helloworld' feeds.conf.default
sed -i '$a src-git passwall https://github.com/xiaorouji/openwrt-passwall' feeds.conf.default
sed -i '$a src-git clash https://github.com/vernesong/OpenClash' feeds.conf.default
