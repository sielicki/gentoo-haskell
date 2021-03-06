# Copyright 1999-2018 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=6

# ebuild generated by hackport 0.5.9999
#hackport: flags: -bundled-binary-generic

CABAL_FEATURES="lib profile" # Drop test-suite: circular depend
CABAL_FEATURES+=" nocabaldep" # in case installed Cabal is broken
inherit haskell-cabal

if [[ ${PV} == *9999* ]]; then
	LIVE_EBUILD=yes
	inherit git-r3
fi

MY_PN="Cabal"
MY_P="${MY_PN}-${PV}"

DESCRIPTION="A framework for packaging Haskell software"
HOMEPAGE="http://www.haskell.org/cabal/"
EGIT_REPO_URI="https://github.com/haskell/cabal.git"

LICENSE="BSD"
SLOT="0/${PV}"
IUSE=""

if [[ -n ${LIVE_EBUILD} ]]; then
	# Cabal's subdir
	S="${S}"/${MY_PN}
else
	SRC_URI="mirror://hackage/packages/archive/${PN}/${PV}/${P}.tar.gz"
	KEYWORDS="~alpha ~amd64 ~ia64 ~ppc ~ppc64 ~sparc ~x86 ~amd64-linux ~x86-linux ~ppc-macos ~x86-macos ~x86-solaris"
	S="${WORKDIR}/${MY_PN}"
fi

RESTRICT=test # circular deps: cabal -> quickcheck -> cabal

RDEPEND=">=dev-haskell/mtl-2.1:=[profile?] <dev-haskell/mtl-2.3:=[profile?]
	>=dev-haskell/parsec-3.1.13.0:=[profile?] <dev-haskell/parsec-3.2:=[profile?]
	>=dev-haskell/text-1.2.3.0:=[profile?] <dev-haskell/text-1.3:=[profile?]
	>=dev-lang/ghc-7.8.2:=
"
DEPEND="${RDEPEND}"

src_prepare() {
	default

	local cabal_upstream_version=$(sed -n 's/^version: //ip' ${MY_PN}.cabal)

	if [[ -n ${LIVE_EBUILD} ]]; then
		# one of renaming reasons is to avoid clashing with bundled ghc-cabal
		CABAL_FILE=${MY_PN}.cabal cabal_chdeps "version: ${cabal_upstream_version}" "version: ${PV}"
	fi
}

src_configure() {
	haskell-cabal_src_configure \
		--flag=-bundled-binary-generic
}
