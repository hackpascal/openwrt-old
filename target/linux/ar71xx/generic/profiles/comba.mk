#
# Copyright (C) 2009-2010 OpenWrt.org
#
# This is free software, licensed under the GNU General Public License v2.
# See /LICENSE for more information.
#

define Profile/AP2600I
	NAME:=Comba MASELink AP2600-I board
	PACKAGES:=kmod-usb-core kmod-usb2 kmod-usb-storage
endef

define Profile/AP2600I/Description
	Package set optimized for the Comba MASELink AP2600-I board.
endef

$(eval $(call Profile,AP2600I))


define Profile/AP2600IFM
	NAME:=Comba MASELink AP2600-IFM board
	PACKAGES:=kmod-usb-core kmod-usb2 kmod-usb-storage
endef

define Profile/AP2600IFM/Description
	Package set optimized for the Comba MASELink AP2600-IFM board.
endef

$(eval $(call Profile,AP2600IFM))


define Profile/SGRW500EBIFITV3
	NAME:=GRENTECH SGR-W500-EBI(FIT) v3.0
	PACKAGES:=kmod-usb-core kmod-usb2 kmod-usb-storage
endef

define Profile/SGRW500EBIFITV3/Description
	Package set optimized for the GRENTECH SGR-W500-EBI(FIT) v3.0 board.
endef

$(eval $(call Profile,SGRW500EBIFITV3))


define Profile/SGRW500N85BV2
	NAME:=GRENTECH SGR-W500-N85b v2.0
	PACKAGES:=kmod-usb-core kmod-usb2 kmod-usb-storage
endef

define Profile/SGRW500N85BV2/Description
	Package set optimized for the GRENTECH SGR-W500-N85b v2.0 board.
endef

$(eval $(call Profile,SGRW500N85BV2))
