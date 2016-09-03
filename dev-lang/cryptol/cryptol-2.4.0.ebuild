# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=6

# ebuild generated by hackport 0.5.9999
#hackport: flags: -static

CABAL_FEATURES="bin lib profile haddock hoogle hscolour"
inherit haskell-cabal

DESCRIPTION="Cryptol: The Language of Cryptography"
HOMEPAGE="http://www.cryptol.net/"
SRC_URI="mirror://hackage/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE="+relocatable server"

RDEPEND="dev-haskell/ansi-terminal:=[profile?]
	>=dev-haskell/async-2.0:=[profile?]
	>=dev-haskell/base-compat-0.6:=[profile?]
	>=dev-haskell/gitrev-1.0:=[profile?]
	>=dev-haskell/graphscc-1.0.4:=[profile?]
	dev-haskell/haskeline:=[profile?]
	>=dev-haskell/heredoc-0.2:=[profile?]
	>=dev-haskell/monad-control-1.0:=[profile?]
	>=dev-haskell/monadlib-3.7.2:=[profile?]
	>=dev-haskell/old-time-1.1:=[profile?]
	>=dev-haskell/presburger-1.3:=[profile?]
	>=dev-haskell/quickcheck-2.7:2=[profile?]
	>=dev-haskell/random-1.0.1:=[profile?]
	>=dev-haskell/sbv-5.12:=[profile?]
	>=dev-haskell/simple-smt-0.6.0:=[profile?]
	>=dev-haskell/smtlib-1.0.7:=[profile?]
	>=dev-haskell/syb-0.4:=[profile?]
	>=dev-haskell/text-1.1:=[profile?]
	>=dev-haskell/tf-random-0.5:=[profile?]
	>=dev-haskell/transformers-0.3:=[profile?]
	>=dev-haskell/transformers-base-0.4:=[profile?]
	>=dev-haskell/utf8-string-0.3:=[profile?]
	>=dev-lang/ghc-7.10.1:=
	server? ( >=dev-haskell/aeson-0.10:=[profile?]
			>=dev-haskell/aeson-pretty-0.7:=[profile?]
			>=dev-haskell/optparse-applicative-0.12:=[profile?]
			>=dev-haskell/unordered-containers-0.2:=[profile?]
			>=dev-haskell/zeromq4-haskell-0.6:=[profile?] )
"
DEPEND="${RDEPEND}
	dev-haskell/alex
	>=dev-haskell/cabal-1.22.2.0
	dev-haskell/happy
"
# runtime-only depend, used for :prove
RDEPEND+="
	sci-mathematics/z3
"

src_configure() {
	haskell-cabal_src_configure \
		$(cabal_flag relocatable relocatable) \
		$(cabal_flag server server) \
		--flag=-static
}