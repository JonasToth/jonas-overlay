# Copyright 1999-2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

DESCRIPTION="Simple passphrase entry dialog via 'fuzzel' with minimal Assuan protocol support."
HOMEPAGE="https://github.com/JonasToth/pinentry-fuzzel"
SRC_URI="https://github.com/JonasToth/pinentry-fuzzel/archive/refs/tags/v${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="GPL-3"
SLOT="0"
KEYWORDS="~alpha ~amd64 ~arm ~arm64 ~hppa ~loong ~m68k ~mips ~ppc ~ppc64 ~riscv ~s390 ~sparc ~x86"
IUSE=""

DEPEND=""
RDEPEND="
	gui-apps/fuzzel
"
BDEPEND=""
IDEPEND=">=app-eselect/eselect-pinentry-0.7.5"

src_install() {
	dobin pinentry-fuzzel
}

pkg_postinst() {
	eselect pinentry update ifunset
}

pkg_postrm() {
	eselect pinentry update ifunset
}

