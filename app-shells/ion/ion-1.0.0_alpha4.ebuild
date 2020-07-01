# Copyright 2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

DESCRIPTION="Modern System Shell completly written in Rust"
HOMEPAGE="https://gitlab.redox-os.org/redox-os/ion"
SRC_URI="https://launchpad.net/~mmstick76/+archive/ubuntu/ion-shell/+sourcefiles/ion-shell/1:1.0.0-alpha4.1/ion-shell_1.0.0-alpha4.1.tar.xz -> ion-1.0.0_alpha4.tar.xz"
S="${WORKDIR}/ion"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

FEATURES="test"

DEPEND=""
RDEPEND="${DEPEND}"
BDEPEND=">=virtual/rust-1.35.0"

DOCS=(README.md CONTRIBUTING.md manual/README.md)

src_prepare() {
	eapply "${FILESDIR}/${P}-install.patch"
	eapply "${FILESDIR}/${P}-examples.patch"
	eapply_user
}

src_compile() {
	RUSTUP=0 VENDORED=1 emake
}

src_test() {
	RUSTUP=0 VENDORED=1 emake tests
}
