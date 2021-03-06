# Copyright 1999-2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3_{2,3,4,5,6,7} )

inherit distutils-r1

DESCRIPTION="Exposes to Python the crc32c algorithm"
HOMEPAGE="https://pypi.org/project/crc32c"
SRC_URI="mirror://pypi/${PN:0:1}/${PN}/${P}.tar.gz"

SLOT="0"
LICENSE="BSD"
KEYWORDS="amd64 ~arm ̃~arm64 ~x86"
IUSE=""

RDEPEND="${PYTHON_DEPS}"

DEPEND="${RDEPEND}"

