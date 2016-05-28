# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=5

# ebuild generated by hackport 0.4.7.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="Binary serialization with version control"
HOMEPAGE="http://acid-state.seize.it/safecopy"
SRC_URI="mirror://hackage/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="public-domain"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND=">=dev-haskell/cereal-0.5:=[profile?] <dev-haskell/cereal-0.6:=[profile?]
	<dev-haskell/old-time-1.2:=[profile?]
	<dev-haskell/text-1.3:=[profile?]
	>=dev-haskell/vector-0.10:=[profile?] <dev-haskell/vector-0.12:=[profile?]
	>=dev-lang/ghc-7.4.1:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.8
	test? ( >=dev-haskell/lens-4.7 <dev-haskell/lens-5.0
		dev-haskell/lens-action
		dev-haskell/quickcheck
		dev-haskell/quickcheck-instances
		dev-haskell/tasty
		dev-haskell/tasty-quickcheck )
"

src_prepare() {
	epatch "${FILESDIR}"/${P}-QC-2.8.2.patch
	epatch "${FILESDIR}"/${P}-ghc-8.patch

	cabal_chdeps \
		'template-haskell < 2.11' 'template-haskell' \
		'time < 1.6' 'time'
}
