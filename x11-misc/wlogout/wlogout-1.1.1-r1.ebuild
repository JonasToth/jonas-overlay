# Copyright 1999-2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit meson

DESCRIPTION="wlogout is a logout menu for wayland environments"
HOMEPAGE="https://github.com/ArtsyMacaw/wlogout"
SRC_URI="https://github.com/ArtsyMacaw/wlogout/archive/${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="transparency man systemd swaylock"

DEPEND="dev-libs/wayland
	x11-libs/gtk+
	dev-libs/gobject-introspection
	transparency? ( gui-libs/gtk-layer-shell )
	|| (
		systemd? ( sys-apps/systemd )
		swaylock? ( gui-apps/swaylock )
	)
	"
RDEPEND="${DEPEND}"
BDEPEND="dev-util/meson
	man? ( app-text/scdoc )
	"

# src_configure() {
#	local emesonargs=(
#		$(use transparency && meson_use
#	)
#	meson_src_configure
# }
