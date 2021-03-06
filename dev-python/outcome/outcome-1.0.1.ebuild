# Copyright 1999-2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3_{4,5,6,7,8} )

inherit distutils-r1

DESCRIPTION="Capture the outcome of Python function calls"
HOMEPAGE="https://pypi.org/project/outcome/"
SRC_URI="mirror://pypi/${PN:0:1}/${PN}/${P}.tar.gz"

SLOT="0"
LICENSE="MIT"
KEYWORDS="amd64 ~arm arm64 ~x86"
IUSE=""

RDEPEND="${PYTHON_DEPS}"

DEPEND="${RDEPEND}
	>=dev-python/attrs-19.2.0[${PYTHON_USEDEP}]
"

