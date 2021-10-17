#!/usr/bin/env bash
#
#
# Frederico Sales
# frederico.sales@uab.ufjf.br
# 2021
# CEAD - UFJF 
#

# here we go
clear;
freebsd-update fetch && freebsd-update install;
pkg bootstrap;
pkg update;
pkg upgrade;

# /etc/rc.conf
# sysrc hostname=XXXyyyXXX
# sysrc ifconfig_emX=DHCP
# sysrc ifconfig_emX=inet 172.16.0.XXX netmask 255.255.255.0
# sysrc defaultrouter=172.16.0.254
# sysrc kld_list=nvidia
# sysrc kld_list=radeon
# sysrc kld_list=i915kms
sysrc bastille_enable=YES
sysrc cloned_interfaces=lo1
sysrc ifconfig_lo1_name=bastille0
sysrc pf_enable=YES

# /boot/loader.conf
# echo 'wlan_wep_load="YES"' >> /boot/loader.conf;
# echo 'wlan_ccmp_load="YES"' >> /boot/loader.conf;
# echo 'wlan_tkip_load="YES"' >> /boot/loader.conf;
# echo 'wlan_amrr_load="YES"' >> /boot/loader.conf;
# echo 'fuse_load="YES"' >> /boot/loader.conf;
# echo 'ext2fs_load="YES"' >> /boot/loader.conf;
# echo 'i915kms_load="YES"' >> /boot/loader.conf;
# echo 'nvidia_load="YES"' >> /boot/loader.conf;
# echo 'radeom_load="YES"' >> /boot/loader.conf;
# echo '' >> /boot/loader.conf;
# echo '' >> /boot/loader.conf;
# echo '' >> /boot/loader.conf;
echo 'kern.vty="vt"' >> /boot/loader.conf;
echo 'vfs.aio.max_buf_aio=8192' >> /boot/loader.conf;
echo 'vfs.aio.max_aio_queue_per_proc=65536' >> /boot/loader.conf;
echo 'vfs.aio.max_aio_per_proc=8192' >> /boot/loader.conf;
echo 'vfs.aio.max_aio_queue=65536' >> /boot/loader.conf;

# installing packages
pkg install -y \
	vim \
	git \
	mtr \
	bash \
	bash-completion \
	p7zip \
	curl \
	wget \
	gcc \
	automake \
	drm-kmod \
	autogen \
	cmake \
	llvm \
	llvm-devel \
	py38-devtools \
	py38-pip \
	py38-installer \
	py38-jupyterlab-server \
	py38-keras \
	py38-scikit-learn \
	py38-pandas \
	py38-plotly \
	py38-seaborn \
	py38-pynvim \
	py38-sqlalchemy14 \
	py38-daemons \
	py38-pkg-config \
	py38-ranger \
	nmap \
	lua53-5.3.6 \
	lua53-argparse \
	lua53-bcrypt \
	lua53-bitlib \
	lua53-bitop \
	lua53-cjson \
	lua53-cqueues \
	lua53-iconv \
	lua53-json \
	lua53-lgi \
	lua53-libevent \
	lua53-lpeg \
	lua53-luadbi \
	lua53-luaexpat \
	lua53-luafilesystem \
	lua53-lualdap \
	lua53-luarocks \
	lua53-luasec \
	lua53-luasocket \
	lua53-luasql-firebird \
	lua53-luasql-mysql \
	lua53-luasql-odbc \
	lua53-luasql-postgres \
	lua53-luasql-sqlite3 \
	lua53-lyaml \
	lua53-posix \
	lua53-stdlib \
	lua53-sysctl \
	lua53-xapian \
	font-awesome \
	nerd-fonts \
	bastille 


# some ricing
cat bashrc >> $HOME/.bashrc;
cat profile >> $HOME/.profile;
cat bash_aliases >> $HOME/.bash_aliases;
. $HOME/.profile;

# the freaking end
echo "Done mothafucka...";