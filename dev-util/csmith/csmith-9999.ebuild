EAPI=8

EGIT_REPO_URI="https://github.com/csmith-project/${PN}.git"

inherit git-r3 cmake

DESCRIPTION="Csmith, a random generator of C programs "
HOMEPAGE="https://embed.cs.utah.edu/csmith/"

LICENSE="BSD"
SLOT="0"
KEYWORDS="~amd64"

BDEPEND="
	dev-libs/libbsd
	sys-devel/m4
	"
DEPEND=""
RDEPEND="${DEPEND}"

PATCHES=( "${FILESDIR}/csmith-install.patch" )

src_install() {
	dodoc README.md
	dodoc ChangeLog
	dodoc AUTHORS
	newdoc driver/README DRIVER
	dodoc doc/probabilities.txt
	cmake_src_install

	einfo "The runtime files to compile & run generated programs are installed under"
	einfo
	einfo "  /usr/include/csmith/"
	einfo
	einfo "Compile the programs with the '-I/usr/include/csmith' option."
}
