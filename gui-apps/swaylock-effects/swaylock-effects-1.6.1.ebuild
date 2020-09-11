# Copyright 2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit meson

DESCRIPTION="Swaylock, with fancy effects"
HOMEPAGE="https://github.com/mortie/swaylock-effects"
# Substitute package version to the slighty different upstream format.
# Example: "${PV} == 1.6.1 --> ${PV_UPSTREAM} == 1.6-1"
SRC_URI="https://github.com/mortie/${PN}/archive/v${PV%.*}-${PV##*.}.tar.gz -> ${P}.tar.gz"
S="${WORKDIR}/${PN}-${PV%.*}-${PV##*.}"

LICENSE="MIT"
SLOT="0"
IUSE="+man gdk-pixbuf"
KEYWORDS="~amd64 ~x86"

DEPEND="
	dev-libs/wayland
	dev-libs/wayland-protocols
	sys-libs/pam
	x11-libs/cairo
	x11-libs/libxkbcommon
	gdk-pixbuf? ( x11-libs/gdk-pixbuf )
	"
RDEPEND="${DEPEND}"
BDEPEND="man? ( app-text/scdoc )"
