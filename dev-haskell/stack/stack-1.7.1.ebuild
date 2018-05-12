# Copyright 1999-2018 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

# ebuild generated by hackport 0.5.5.9999
#hackport: flags: -disable-git-info,-hide-dependency-versions,-integration-tests,-static,-supported-build

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="The Haskell Tool Stack"
HOMEPAGE="http://haskellstack.org"
SRC_URI="mirror://hackage/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
# No KEYWORDS as it depends on cabal >= 2.2.0.1 and some masked deps
#KEYWORDS="~amd64 ~x86"
IUSE=""

RESTRICT=test # installs packages from network

RDEPEND=">=dev-haskell/aeson-1.2.4.0:=[profile?]
	>=dev-haskell/annotated-wl-pprint-0.7.0:=[profile?]
	>=dev-haskell/ansi-terminal-0.8.0.2:=[profile?]
	>=dev-haskell/attoparsec-0.13.2.2:=[profile?]
	>=dev-haskell/base64-bytestring-1.0.0.1:=[profile?]
	>=dev-haskell/bindings-uname-0.1:=[profile?]
	>=dev-haskell/cabal-2.2.0.1:=[profile?]
	>=dev-haskell/cryptonite-0.25:=[profile?]
	>=dev-haskell/cryptonite-conduit-0.2.2:=[profile?]
	>=dev-haskell/echo-0.1.3:=[profile?]
	>=dev-haskell/exceptions-0.8.3:=[profile?]
	>=dev-haskell/extra-1.6.6:=[profile?]
	>=dev-haskell/file-embed-0.0.10.1:=[profile?]
	>=dev-haskell/filelock-0.1.1.2:=[profile?]
	>=dev-haskell/generic-deriving-1.12.1:=[profile?]
	>=dev-haskell/gitrev-1.3.1:=[profile?]
	>=dev-haskell/hackage-security-0.5.3.0:=[profile?]
	>=dev-haskell/hashable-1.2.7.0:=[profile?]
	>=dev-haskell/hpack-0.28.2:=[profile?]
	>=dev-haskell/http-client-0.5.12.1:=[profile?]
	>=dev-haskell/http-client-tls-0.3.5.3:=[profile?]
	>=dev-haskell/http-conduit-2.3.1:=[profile?]
	>=dev-haskell/http-types-0.12.1:=[profile?]
	>=dev-haskell/memory-0.14.16:=[profile?]
	>=dev-haskell/mintty-0.1.1:=[profile?]
	>=dev-haskell/monad-logger-0.3.28.5:=[profile?]
	>=dev-haskell/mono-traversable-1.0.8.1:=[profile?]
	>=dev-haskell/mtl-2.2.2:=[profile?]
	>=dev-haskell/mustache-2.3.0:=[profile?]
	>=dev-haskell/neat-interpolation-0.3.2.1:=[profile?]
	>=dev-haskell/network-uri-2.6.1.0:=[profile?]
	>=dev-haskell/open-browser-0.2.1.0:=[profile?]
	>=dev-haskell/optparse-applicative-0.14.2.0:=[profile?]
	>=dev-haskell/optparse-simple-0.1.0:=[profile?]
	>=dev-haskell/path-0.6.1:=[profile?]
	>=dev-haskell/path-io-1.3.3:=[profile?]
	>=dev-haskell/persistent-template-2.5.4:=[profile?]
	>=dev-haskell/primitive-0.6.3.0:=[profile?]
	>=dev-haskell/project-template-0.2.0.1:=[profile?]
	>=dev-haskell/regex-applicative-text-0.1.0.1:=[profile?]
	>=dev-haskell/retry-0.7.6.2:=[profile?]
	>=dev-haskell/rio-0.1.1.0:=[profile?]
	>=dev-haskell/semigroups-0.18.4:=[profile?]
	>=dev-haskell/split-0.2.3.3:=[profile?]
	>=dev-haskell/stm-2.4.5.0:=[profile?]
	>=dev-haskell/store-0.4.3.2:=[profile?]
	>=dev-haskell/store-core-0.4.1:=[profile?]
	>=dev-haskell/tar-0.5.1.0:=[profile?]
	>=dev-haskell/temporary-1.2.1.1:=[profile?]
	>=dev-haskell/text-1.2.3.0:=[profile?]
	>=dev-haskell/text-metrics-0.3.0:=[profile?]
	>=dev-haskell/th-reify-many-0.1.8:=[profile?]
	>=dev-haskell/tls-1.4.1:=[profile?]
	>=dev-haskell/typed-process-0.2.1.0:=[profile?]
	>=dev-haskell/unicode-transforms-0.3.4:=[profile?]
	>=dev-haskell/unix-compat-0.4.3.1:=[profile?]
	>=dev-haskell/unliftio-0.2.4.0:=[profile?]
	>=dev-haskell/unordered-containers-0.2.9.0:=[profile?]
	>=dev-haskell/vector-0.12.0.1:=[profile?]
	>=dev-haskell/yaml-0.8.29:=[profile?]
	>=dev-haskell/zip-archive-0.3.2.4:=[profile?]
	>=dev-haskell/zlib-0.6.2:=[profile?]
	>=dev-lang/ghc-8.2.1:=
	>=dev-haskell/async-2.1.1.1:=[profile?]
	>=dev-haskell/conduit-1.2.13:=[profile?]
	>=dev-haskell/conduit-extra-1.2.3.1:=[profile?]
	>=dev-haskell/fsnotify-0.2.1.1:=[profile?]
	>=dev-haskell/microlens-0.4.8.3:=[profile?]
	>=dev-haskell/persistent-2.7.1:=[profile?]
	>=dev-haskell/persistent-sqlite-2.6.4:=[profile?]
	>=dev-haskell/resourcet-1.1.11:=[profile?]
	>=dev-haskell/streaming-commons-0.1.19:=[profile?]
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-2.0.0.2
	test? ( >=dev-haskell/smallcheck-1.1.3.1
		>=dev-haskell/hspec-2.4.8
		>=dev-haskell/quickcheck-2.10.1 )
"

src_configure() {
	haskell-cabal_src_configure \
		--flag=-disable-git-info \
		--flag=-hide-dependency-versions \
		--flag=-integration-tests \
		--flag=-static \
		--flag=-supported-build
}