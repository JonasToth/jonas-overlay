# Copyright 1999-2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit meson bash-completion-r1

DESCRIPTION="wlogout is a logout menu for wayland environments"
HOMEPAGE="https://github.com/ArtsyMacaw/wlogout"
SRC_URI="https://github.com/ArtsyMacaw/wlogout/archive/${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64"
IUSE="fish-completion layershell man zsh-completion"

BDEPEND="
	dev-util/meson
	man? ( app-text/scdoc )
	"
DEPEND="
	dev-libs/wayland
	x11-libs/gtk+
	dev-libs/gobject-introspection
	layershell? ( gui-libs/gtk-layer-shell )
	"
RDEPEND="
	${DEPEND}
	zsh-completion? ( app-shells/zsh )
	fish-completion? ( app-shells/fish )
	"

src_configure() {
	local emesonargs=(
		-Dbash-completions=false
		-Dfish-completions=false
		-Dzsh-completions=false
		$(meson_feature man man-pages)
	)
	meson_src_configure
}

src_install() {
	meson_src_install

	newbashcomp completions/wlogout.bash ${PN}

	if use zsh-completion ; then
		insinto /usr/share/zsh/site-functions
		newins completions/_${PN} ${PN}
	fi

	if use fish-completion ; then
		insinto /usr/share/fish/completions
		newins completions/${PN}.fish ${PN}.fish
	fi
}
