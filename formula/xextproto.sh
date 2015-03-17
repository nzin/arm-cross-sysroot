#!/bin/bash

GV_url="http://xorg.freedesktop.org/releases/individual/proto/xextproto-7.2.1.tar.bz2"

DEPEND=(
	"util-macros"
	"xproto"
)

GV_args=(
	"--host=${GV_host}"
	"--sbindir=${GV_base_dir}/tmp/sbin"
	"--libexecdir=${GV_base_dir}/tmp/libexec"
	"--sysconfdir=${GV_base_dir}/tmp/etc"
	"--localstatedir=${GV_base_dir}/tmp/var"
	"--datarootdir=${GV_base_dir}/tmp/share"
)

FU_get_names_from_url
FU_installed "${GV_name}.pc"

if [ $? == 1 ]; then
	FU_get_download
	FU_extract_tar
	FU_build
fi
