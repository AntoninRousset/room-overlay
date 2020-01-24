# Copyright 1999-2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3_6 )
PYTHON_REQ_USE="threads(+),sqlite(+)"

inherit git-r3 distutils-r1 flag-o-matic virtualx toolchain-funcs prefix

DESCRIPTION="Run and monitor an escape room"
HOMEPAGE="https://github.com/AntoninRousset/${PN}"
#SRC_URI="${HOMEPAGE}/archive/${PV}.tar.gz -> ${P}.tar.gz"
EGIT_REPO_URI="${HOMEPAGE}.git"

SLOT="0"
LICENSE="GPL-3"
KEYWORDS="~amd64 ~x86"
IUSE=""


RDEPEND="
	${PYTHON_DEPS}
	>=dev-python/aiortc-0.9.22
	>=dev-python/aiohttp-3.6.1
	>=dev-python/aiohttp-jinja2-0.15.0
	>=dev-python/aiohttp-sse-2.0.0
"

DEPEND="${RDEPEND}"

REQUIRED_USE="
	${PYTHON_REQUIRED_USE}
"

python_prepare_all() {
	distutils-r1_python_prepare_all
	mv "${WORKDIR}"/${JQUERY_UI} "${WORKDIR}"/${P}/lib/matplotlib/backends/web_backend/
}

