TERMUX_PKG_HOMEPAGE=https://github.com/lzanini/mdbook-katex
TERMUX_PKG_DESCRIPTION="A preprocessor for mdBook, pre-rendering LaTex equations to HTML at build time"
TERMUX_PKG_LICENSE="MIT"
TERMUX_PKG_MAINTAINER="@termux"
TERMUX_PKG_VERSION="0.3.9"
TERMUX_PKG_SRCURL=https://github.com/lzanini/mdbook-katex/archive/refs/tags/v${TERMUX_PKG_VERSION}.tar.gz
TERMUX_PKG_SHA256=0b73267605003bbebeaa07fcaebdebfda3fb92bddb9f987ed56ff89051e561d7
TERMUX_PKG_AUTO_UPDATE=true
TERMUX_PKG_DEPENDS="openssl"
TERMUX_PKG_BUILD_IN_SRC=true

termux_step_pre_configure() {
	export OPENSSL_INCLUDE_DIR=$TERMUX_PREFIX/include/openssl
	export OPENSSL_LIB_DIR=$TERMUX_PREFIX/lib
}

termux_step_make() {
	termux_setup_rust
	cargo build --jobs $TERMUX_MAKE_PROCESSES --target $CARGO_TARGET_NAME --release
}

termux_step_make_install() {
	install -Dm700 -t $TERMUX_PREFIX/bin target/${CARGO_TARGET_NAME}/release/mdbook-katex
}
