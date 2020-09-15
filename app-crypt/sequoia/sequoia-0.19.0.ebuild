# Copyright 2017-2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

# Auto-Generated by cargo-ebuild 0.3.1

EAPI=7

CRATES="
adler32-1.2.0
aho-corasick-0.7.13
ansi_term-0.11.0
anyhow-1.0.32
arrayref-0.3.6
arrayvec-0.5.1
ascii-canvas-2.0.0
assert_cli-0.6.3
atty-0.2.14
autocfg-0.1.7
autocfg-1.0.1
backtrace-0.3.46
backtrace-sys-0.1.37
base64-0.11.0
base64-0.12.3
bindgen-0.51.1
bitflags-1.2.1
bit-set-0.5.2
bit-vec-0.6.2
blake2b_simd-0.5.10
block-buffer-0.7.3
block-buffer-0.9.0
block-padding-0.1.5
bstr-0.2.13
byteorder-1.3.4
bytes-0.4.12
byte-tools-0.3.1
bzip2-0.3.3
bzip2-sys-0.1.9+1.0.8
capnp-0.10.3
capnpc-0.10.2
capnp-futures-0.10.1
capnp-rpc-0.10.0
cc-1.0.59
cexpr-0.3.6
cfg-if-0.1.10
chrono-0.4.15
clang-sys-0.28.1
clap-2.33.3
cloudabi-0.0.3
colored-1.9.1
constant_time_eq-0.1.5
core-foundation-0.7.0
core-foundation-sys-0.7.0
cpuid-bool-0.1.2
crc32fast-1.2.0
crossbeam-deque-0.7.3
crossbeam-epoch-0.8.2
crossbeam-queue-0.2.3
crossbeam-utils-0.7.2
crossterm-0.13.3
crossterm_winapi-0.4.0
csv-1.1.3
csv-core-0.1.10
ctor-0.1.15
curve25519-dalek-3.0.0
diff-0.1.12
difference-2.0.0
digest-0.8.1
digest-0.9.0
dirs-1.0.5
dirs-2.0.2
dirs-sys-0.3.5
doc-comment-0.3.3
docopt-1.1.0
dyn-clone-1.0.1
ed25519-1.0.1
ed25519-dalek-1.0.0
either-1.6.0
ena-0.13.1
encode_unicode-0.3.6
environment-0.1.1
failure-0.1.8
failure_derive-0.1.8
fake-simd-0.1.2
fallible-iterator-0.2.0
fallible-streaming-iterator-0.1.9
filetime-0.2.12
fixedbitset-0.1.9
flate2-1.0.14
fnv-1.0.7
foreign-types-0.3.2
foreign-types-shared-0.1.1
fs2-0.4.3
fuchsia-cprng-0.1.1
fuchsia-zircon-0.3.3
fuchsia-zircon-sys-0.3.3
futures-0.1.29
futures-cpupool-0.1.8
generic-array-0.12.3
generic-array-0.14.4
getrandom-0.1.14
glob-0.3.0
h2-0.1.26
hashbrown-0.8.2
heck-0.3.1
hermit-abi-0.1.15
http-0.1.21
httparse-1.3.4
http-body-0.1.0
hyper-0.12.35
hyper-tls-0.3.2
idna-0.2.0
indexmap-1.5.1
iovec-0.1.4
itertools-0.8.2
itoa-0.4.6
kernel32-sys-0.2.2
lalrpop-0.17.2
lalrpop-util-0.17.2
lazy_static-1.4.0
libc-0.2.76
libloading-0.5.2
libm-0.2.1
libsqlite3-sys-0.15.0
linked-hash-map-0.5.3
lock_api-0.3.4
log-0.4.11
lru-cache-0.1.2
mach_o_sys-0.1.1
matches-0.1.8
maybe-uninit-2.0.0
memchr-2.3.3
memoffset-0.5.5
memsec-0.5.7
miniz_oxide-0.3.7
mio-0.6.22
mio-named-pipes-0.1.7
mio-uds-0.6.8
miow-0.2.1
miow-0.3.5
native-tls-0.2.4
net2-0.2.34
nettle-7.0.0
nettle-src-3.5.1-2
nettle-sys-2.0.4
new_debug_unreachable-1.0.4
nom-4.2.3
num-bigint-dig-0.6.0
num_cpus-1.13.0
num-integer-0.1.43
num-iter-0.1.41
num-traits-0.2.12
opaque-debug-0.2.3
opaque-debug-0.3.0
openssl-0.10.30
openssl-probe-0.1.2
openssl-sys-0.9.58
ordermap-0.3.5
parity-tokio-ipc-0.4.0
parking_lot-0.9.0
parking_lot_core-0.6.2
peeking_take_while-0.1.2
percent-encoding-2.1.0
petgraph-0.4.13
phf_generator-0.7.24
phf_shared-0.7.24
pkg-config-0.3.18
ppv-lite86-0.2.9
precomputed-hash-0.1.1
prettytable-rs-0.8.0
proc-macro2-1.0.19
proc-macro-error-1.0.4
proc-macro-error-attr-1.0.4
quickcheck-0.9.2
quote-1.0.7
rand-0.6.5
rand-0.7.3
rand_chacha-0.1.1
rand_chacha-0.2.2
rand_core-0.3.1
rand_core-0.4.2
rand_core-0.5.1
rand_hc-0.1.0
rand_hc-0.2.0
rand_isaac-0.1.1
rand_jitter-0.1.4
rand_os-0.1.3
rand_pcg-0.1.2
rand_xorshift-0.1.1
rdrand-0.4.0
redox_syscall-0.1.57
redox_users-0.3.4
regex-1.3.9
regex-automata-0.1.9
regex-syntax-0.6.18
remove_dir_all-0.5.3
rpassword-4.0.3
rusqlite-0.19.0
rust-argon2-0.7.0
rustc-demangle-0.1.16
rustc-hash-1.1.0
rustc_version-0.2.3
ryu-1.0.5
schannel-0.1.19
scoped-tls-0.1.2
scopeguard-1.1.0
security-framework-0.4.4
security-framework-sys-0.4.3
semver-0.9.0
semver-parser-0.7.0
serde-1.0.115
serde_derive-1.0.115
serde_json-1.0.57
sha2-0.8.2
sha2-0.9.1
shlex-0.1.1
signature-1.2.2
siphasher-0.2.3
slab-0.4.2
smallvec-0.6.13
smallvec-1.4.2
socket2-0.3.11
spin-0.5.2
string-0.2.1
string_cache-0.7.5
string_cache_codegen-0.4.4
string_cache_shared-0.3.0
strsim-0.8.0
strsim-0.9.3
structopt-0.3.16
structopt-derive-0.4.9
subtle-2.2.3
syn-1.0.38
synstructure-0.12.4
tempfile-3.1.0
term-0.5.2
textwrap-0.11.0
thiserror-1.0.20
thiserror-impl-1.0.20
thread_local-1.0.1
time-0.1.43
tokio-0.1.22
tokio-buf-0.1.1
tokio-codec-0.1.2
tokio-core-0.1.17
tokio-current-thread-0.1.7
tokio-executor-0.1.10
tokio-fs-0.1.7
tokio-io-0.1.13
tokio-named-pipes-0.1.0
tokio-reactor-0.1.12
tokio-sync-0.1.8
tokio-tcp-0.1.4
tokio-threadpool-0.1.18
tokio-timer-0.2.13
tokio-udp-0.1.6
tokio-uds-0.2.7
try-lock-0.2.3
typenum-1.12.0
unicode-bidi-0.3.4
unicode-normalization-0.1.9
unicode-segmentation-1.6.0
unicode-width-0.1.8
unicode-xid-0.1.0
unicode-xid-0.2.1
url-2.1.1
vcpkg-0.2.10
vec_map-0.8.2
version_check-0.1.5
version_check-0.9.2
want-0.2.0
wasi-0.9.0+wasi-snapshot-preview1
winapi-0.2.8
winapi-0.3.9
winapi-build-0.1.1
winapi-i686-pc-windows-gnu-0.4.0
winapi-x86_64-pc-windows-gnu-0.4.0
win-crypto-ng-0.2.0
ws2_32-sys-0.2.1
zbase32-0.1.2
zeroize-1.1.0
zeroize_derive-1.0.0
"

inherit cargo

DESCRIPTION="A cool new OpenPGP implementation"
HOMEPAGE="https://gitlab.com/sequoia-pgp/sequoia"
SRC_URI="$(cargo_crate_uris ${CRATES})
		https://gitlab.com/sequoia-pgp/sequoia/-/archive/v${PV}/sequoia-v${PV}.tar.gz"
S="${WORKDIR}/${PN}-v${PV}"
RESTRICT="mirror"
LICENSE="GPL-2.0"
SLOT="0"
KEYWORDS="~amd64"
IUSE=""

DEPEND="dev-libs/capnproto"

src_prepare() {
	sed -i '/share\/fish\/completions\//d' sqv/Makefile tool/Makefile
	sed -i '/\/sqv\?.fish/d' sqv/Makefile tool/Makefile
	sed -i '/share\/bash-completion\/completions\//d' sqv/Makefile tool/Makefile
	sed -i '/share\/zsh\/site-functions\//d' sqv/Makefile tool/Makefile
	sed -i '/\/_sq/d' sqv/Makefile tool/Makefile
	default
}

src_compile() {
	cargo_src_compile --package sequoia-tool --package sequoia-store --package sequoia-sqv
}

src_install() {
	dobin target/release/sq
	dobin target/release/sqv
	into /usr/lib/sequoia
	dobin target/release/sequoia-public-key-store
}
