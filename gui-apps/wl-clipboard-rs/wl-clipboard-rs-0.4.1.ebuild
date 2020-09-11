# Copyright 2017-2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

# Auto-Generated by cargo-ebuild 0.3.1

EAPI=7

CRATES="
addr2line-0.13.0
adler-0.2.3
ansi_term-0.11.0
atty-0.2.11
autocfg-1.0.1
backtrace-0.3.50
bitflags-1.2.1
cc-1.0.59
cfg-if-0.1.10
chrono-0.4.15
clap-2.33.3
cloudabi-0.0.3
derive-new-0.5.8
derive_more-0.99.9
dlib-0.4.2
downcast-rs-1.2.0
exitfailure-0.5.1
failure-0.1.8
failure_derive-0.1.8
fixedbitset-0.2.0
fnv-1.0.7
getrandom-0.1.14
gimli-0.22.0
hashbrown-0.8.2
heck-0.3.1
indexmap-1.5.1
lazy_static-0.2.11
lazy_static-1.4.0
libc-0.2.76
libloading-0.6.3
lock_api-0.3.4
log-0.4.11
memchr-1.0.2
mime-0.3.16
mime_guess-2.0.3
miniz_oxide-0.4.1
nix-0.17.0
nix-0.18.0
nom-3.2.1
num-integer-0.1.43
num-traits-0.2.12
numtoa-0.1.0
object-0.20.0
once_cell-1.4.1
os_pipe-0.9.2
parking_lot-0.10.2
parking_lot_core-0.7.2
petgraph-0.5.1
pkg-config-0.3.18
ppv-lite86-0.2.9
proc-macro-error-1.0.4
proc-macro-error-attr-1.0.4
proc-macro2-1.0.19
quote-1.0.7
rand-0.7.3
rand_chacha-0.2.2
rand_core-0.5.1
rand_hc-0.2.0
redox_syscall-0.1.57
redox_termios-0.1.1
remove_dir_all-0.5.3
rustc-demangle-0.1.16
scopeguard-1.1.0
scoped-tls-1.0.0
smallvec-1.4.2
stderrlog-0.4.3
strsim-0.8.0
structopt-0.3.17
structopt-derive-0.4.10
syn-1.0.39
synstructure-0.12.4
tempfile-3.1.0
term_size-0.3.2
termcolor-1.1.0
termion-1.5.5
textwrap-0.11.0
thread_local-0.3.4
time-0.1.44
tree_magic-0.2.3
unicase-2.6.0
unicode-segmentation-1.6.0
unicode-width-0.1.8
unicode-xid-0.2.1
unreachable-1.0.0
vec_map-0.8.2
version_check-0.9.2
void-1.0.2
wasi-0.10.0+wasi-snapshot-preview1
wasi-0.9.0+wasi-snapshot-preview1
wayland-client-0.27.0
wayland-commons-0.27.0
wayland-protocols-0.27.0
wayland-scanner-0.27.0
wayland-server-0.27.0
wayland-sys-0.27.0
winapi-0.3.9
winapi-i686-pc-windows-gnu-0.4.0
winapi-util-0.1.5
winapi-x86_64-pc-windows-gnu-0.4.0
xml-rs-0.8.3
"

inherit cargo

DESCRIPTION="Access to the Wayland clipboard for terminal and other window-less applications."
HOMEPAGE="https://github.com/YaLTeR/wl-clipboard-rs"
SRC_URI="https://crates.io/api/v1/crates/${PN}/${PV}/download -> ${P}.crate
		$(cargo_crate_uris ${CRATES})"
RESTRICT="mirror"
# License set may be more restrictive as OR is not respected
# use cargo-license for a more accurate license picture
LICENSE="Apache-2.0 MIT"
SLOT="0"
KEYWORDS="~amd64"