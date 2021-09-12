EAPI=7

inherit cmake

DESCRIPTION="Csmith, a random generator of C programs "
HOMEPAGE="https://embed.cs.utah.edu/csmith/"
SRC_URI="https://github.com/csmith-project/csmith/archive/refs/tags/${P}.tar.gz"
S="${WORKDIR}/csmith-${P}"

LICENSE="BSD"
SLOT="0"
KEYWORDS="~amd64"

BDEPEND="dev-libs/libbsd"
DEPEND=""
RDEPEND="${DEPEND}"

PATCHES=( "${FILESDIR}/csmith-2.3.0-disable-util.patch" )

src_install() {
	dodoc README doc/probabilities.txt
	cmake_src_install
}
