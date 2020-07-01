EAPI=7

inherit meson

DESCRIPTION="Wofi is a launcher/menu program for wlroots based wayland compositors such as sway"
HOMEPAGE="https://hg.sr.ht/~Escoopta/wofi"
SRC_URI="https://hg.sr.ht/~scoopta/wofi/archive/v${PV}.tar.gz"

S="${WORKDIR}/${PN}-v${PV}"

LICENSE="GPL-3"
SLOT="0"
KEYWORDS="~amd64 ~x86"

BDEPEND="virtual/pkgconfig"
DEPEND="dev-libs/wayland
		x11-libs/gtk+"

src_configure() {
	meson_src_configure
}
