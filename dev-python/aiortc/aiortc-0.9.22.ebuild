# Copyright 1999-2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3_{5,6} )

inherit distutils-r1

DESCRIPTION="WebRTC and ORTC implementation for Python using asyncio"
HOMEPAGE="https://github.com/aiortc/${PN}"
SRC_URI="${HOMEPAGE}/archive/${PV}.tar.gz -> ${P}.tar.gz"

SLOT="0"
LICENSE="BSD"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND="${PYTHON_DEPS}
	virtual/pkgconfig
	|| (
		>=media-video/ffmpeg-3.2[opus,vpx]
		>=media-video/libav-12.3[opus,vpx]
	)
	>=dev-python/aioice-0.6.15[${PYTHON_USEDEP}]
	!>=dev-python/aioice-0.7.0[${PYTHON_USEDEP}]
	dev-python/attrs[${PYTHON_USEDEP}]
	>=dev-python/av-6.2.0[${PYTHON_USEDEP}]
	!>=dev-python/av-7.0.0[${PYTHON_USEDEP}]
	>=dev-python/cffi-1.0.0[${PYTHON_USEDEP}]
	dev-python/crc32c[${PYTHON_USEDEP}]
	>=dev-python/cryptography-2.2[${PYTHON_USEDEP}]
	>=dev-python/pyee-6.0.0[${PYTHON_USEDEP}]
	dev-python/pyopenssl[${PYTHON_USEDEP}]
	>=dev-python/pylibsrtp-0.5.6[${PYTHON_USEDEP}]
"

DEPEND="${RDEPEND}"
