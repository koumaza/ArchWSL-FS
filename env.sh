#!/bin/bash

ARCH="x86_64"
ROOTFS_VER="2021.04.01"
ROOTFS_FN="archlinux-bootstrap-${ROOTFS_VER}-${ARCH}.tar.gz"
ROOTFS_URL="https://mirrors.edge.kernel.org/archlinux/iso/${ROOTFS_VER}/${ROOTFS_FN}"

FRTCP_BLD="18082100"
FRTCP_VER="1.23-1"
FRTCP_FN="fakeroot-tcp-${FRTCP_VER}-${ARCH}.pkg.tar.xz"
FRTCP_URL="https://github.com/yuk7/arch-prebuilt/releases/download/${FRTCP_BLD}/${FRTCP_FN}"

PAC_PKGS="base less nano sudo vim curl"

if type aria2c >/dev/null 2>&1 ; then
    DLR="aria2c -x16 -s20"
elif type wget >/dev/null 2>&1 ; then
    DLR="wget"
elif type curl >/dev/null 2>&1 ; then
    DLR="curl"
fi
