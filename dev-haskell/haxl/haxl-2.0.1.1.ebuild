# Copyright 1999-2018 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=6

# ebuild generated by hackport 0.5.6.9999
#hackport: flags: -bench

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="A Haskell library for efficient, concurrent, and concise data access"
HOMEPAGE="https://github.com/facebook/Haxl"
SRC_URI="mirror://hackage/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND=">=dev-haskell/aeson-0.6:=[profile?] <dev-haskell/aeson-1.5:=[profile?]
	>=dev-haskell/exceptions-0.8:=[profile?] <dev-haskell/exceptions-0.11:=[profile?]
	>=dev-haskell/hashable-1.2:=[profile?] <dev-haskell/hashable-1.3:=[profile?]
	>=dev-haskell/semigroups-0.18.3:=[profile?] <dev-haskell/semigroups-0.19:=[profile?]
	>=dev-haskell/stm-2.4:=[profile?] <dev-haskell/stm-2.6:=[profile?]
	>=dev-haskell/text-1.2.1.0:=[profile?] <dev-haskell/text-1.3:=[profile?]
	>=dev-haskell/unordered-containers-0.2:=[profile?] <dev-haskell/unordered-containers-0.3:=[profile?]
	>=dev-haskell/vector-0.10:=[profile?] <dev-haskell/vector-0.13:=[profile?]
	>=dev-lang/ghc-7.8.2:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.18.1.3
	test? ( >=dev-haskell/hunit-1.2 <dev-haskell/hunit-1.7
		dev-haskell/test-framework
		dev-haskell/test-framework-hunit )
"

src_configure() {
	haskell-cabal_src_configure \
		--flag=-bench
}
