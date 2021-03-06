# Copyright 1999-2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3_{5,6,7,8} )

inherit distutils-r1

DESCRIPTION="Pythonic bindings for FFmpeg's libraries"
HOMEPAGE="https://github.com/mikeboers/${PN}"
SRC_URI="mirror://pypi/${PN:0:1}/${PN}/${P}.tar.gz"

SLOT="0"
LICENSE="BSD"
KEYWORDS="amd64 ~arm arm64 ~x86"
IUSE=""

RDEPEND="${PYTHON_DEPS}
	>=media-video/ffmpeg-4.1.3
"

DEPEND="${RDEPEND}
	dev-python/cython
	virtual/pkgconfig
"

