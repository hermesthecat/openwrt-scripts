echo "src/gz ekopl_base https://dl.eko.one.pl/openwrt-22.03/packages/arm_cortex-a7_neon-vfpv4/base" > /etc/opkg/customfeeds.conf
echo "src/gz ekopl_luci https://dl.eko.one.pl/openwrt-22.03/packages/arm_cortex-a7_neon-vfpv4/luci" > /etc/opkg/customfeeds.conf
echo "src/gz ekopl_ppackages https://dl.eko.one.pl/openwrt-22.03/packages/arm_cortex-a7_neon-vfpv4/packages" > /etc/opkg/customfeeds.conf
echo "src/gz ekopl_routing https://dl.eko.one.pl/openwrt-22.03/packages/arm_cortex-a7_neon-vfpv4/routing" > /etc/opkg/customfeeds.conf
echo "src/gz ekopl_telephony https://dl.eko.one.pl/openwrt-22.03/packages/arm_cortex-a7_neon-vfpv4/telephony" > /etc/opkg/customfeeds.conf

opkg update

wget --no-check-certificate -O /tmp/luci-app-cpu-status_0.4-1_all.ipk https://github.com/gSpotx2f/packages-openwrt/raw/master/current/luci-app-cpu-status_0.4-1_all.ipk
opkg install /tmp/luci-app-cpu-status_0.4-1_all.ipk
rm /tmp/luci-app-cpu-status_0.4-1_all.ipk

wget --no-check-certificate -O /tmp/internet-detector_0.5-0_all.ipk https://github.com/gSpotx2f/packages-openwrt/raw/master/current/internet-detector_0.5-0_all.ipk
opkg install /tmp/internet-detector_0.5-0_all.ipk
rm /tmp/internet-detector_0.5-0_all.ipk
/etc/init.d/internet-detector start
/etc/init.d/internet-detector enable

wget --no-check-certificate -O /tmp/luci-app-internet-detector_0.5-1_all.ipk https://github.com/gSpotx2f/packages-openwrt/raw/master/current/luci-app-internet-detector_0.5-1_all.ipk
opkg install /tmp/luci-app-internet-detector_0.5-1_all.ipk
rm /tmp/luci-app-internet-detector_0.5-1_all.ipk

wget --no-check-certificate -O /tmp/luci-app-log_0.5-1_all.ipk https://github.com/gSpotx2f/packages-openwrt/raw/master/current/luci-app-log_0.5-1_all.ipk
opkg install /tmp/luci-app-log_0.5-1_all.ipk
rm /tmp/luci-app-log_0.5-1_all.ipk

wget --no-check-certificate -O /tmp/luci-app-interfaces-statistics_0.4-4_all.ipk https://github.com/gSpotx2f/packages-openwrt/raw/master/current/luci-app-interfaces-statistics_0.4-4_all.ipk
opkg install /tmp/luci-app-interfaces-statistics_0.4-4_all.ipk
rm /tmp/luci-app-interfaces-statistics_0.4-4_all.ipk

wget --no-check-certificate -O /tmp/luci-app-temp-status_0.3-5_all.ipk https://github.com/gSpotx2f/packages-openwrt/raw/master/current/luci-app-temp-status_0.3-5_all.ipk
opkg install /tmp/luci-app-temp-status_0.3-5_all.ipk
rm /tmp/luci-app-temp-status_0.3-5_all.ipk

wget --no-check-certificate -O /tmp/luci-app-cloudflarespeedtest_1.4.6_all.ipk https://github.com/mingxiaoyu/luci-app-cloudflarespeedtest/releases/download/v1.4.6/luci-app-cloudflarespeedtest_1.4.6_all.ipk
opkg install /tmp/luci-app-cloudflarespeedtest_1.4.6_all.ipk
rm /tmp/luci-app-cloudflarespeedtest_1.4.6_all.ipk

/etc/init.d/rpcd restart

