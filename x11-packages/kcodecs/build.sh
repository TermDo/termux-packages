TERMUX_PKG_HOMEPAGE=https://www.kde.org/
TERMUX_PKG_DESCRIPTION="Method collection to manipulate strings using various encodings (KDE)"
TERMUX_PKG_LICENSE="LGPL-2.1"
TERMUX_PKG_MAINTAINER="Simeon Huang <symeon@librehat.com>"
TERMUX_PKG_VERSION=5.103.0
TERMUX_PKG_SRCURL="https://download.kde.org/stable/frameworks/${TERMUX_PKG_VERSION%.*}/kcodecs-${TERMUX_PKG_VERSION}.tar.xz"
TERMUX_PKG_SHA256=5e14cae3ec139eec76439ab38b3e379be955f35b8dd2d480e66510c709e26f39
TERMUX_PKG_DEPENDS="libc++, qt5-qtbase"
TERMUX_PKG_BUILD_DEPENDS="extra-cmake-modules, qt5-qtbase-cross-tools, qt5-qttools-cross-tools"
