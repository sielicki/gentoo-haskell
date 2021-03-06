# Copyright 1999-2018 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

# ebuild generated by hackport 0.5.6

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="Standard spec's for aeson-related instances"
HOMEPAGE="http://cs-syd.eu"
SRC_URI="mirror://hackage/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="MIT"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND="dev-haskell/aeson:=[profile?]
	>=dev-haskell/genvalidity-0.5:=[profile?]
	>=dev-haskell/genvalidity-hspec-0.6:=[profile?]
	dev-haskell/hspec:=[profile?]
	dev-haskell/quickcheck:2=[profile?]
	>=dev-lang/ghc-8.0.1:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.24.0.0
	test? ( dev-haskell/doctest
		dev-haskell/genvalidity-aeson
		dev-haskell/genvalidity-text
		dev-haskell/text )
"
