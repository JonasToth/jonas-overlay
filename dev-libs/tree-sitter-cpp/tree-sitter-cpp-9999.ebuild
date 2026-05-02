# Copyright 1999-2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

TS_BINDINGS=( python )

inherit tree-sitter-grammar

SRC_URI="https://github.com/JonasToth/${PN}/archive/${TS_PV:-v${PV}}.tar.gz
	-> ${P}.tar.gz"

DESCRIPTION="C++ grammar for Tree-sitter"
HOMEPAGE="https://github.com/JonasToth/tree-sitter-cpp"

LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64 ~arm ~arm64 ~ppc ~ppc64"

# requires test data from tree-sitter-c
RESTRICT="test"
