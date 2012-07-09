# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=4

# ebuild generated by hackport 0.2.18.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="Provides some basic WAI handlers and middleware."
HOMEPAGE="http://github.com/yesodweb/wai"
SRC_URI="http://hackage.haskell.org/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND="dev-haskell/ansi-terminal[profile?]
		>=dev-haskell/blaze-builder-0.2.1.4[profile?]
		<dev-haskell/blaze-builder-0.4[profile?]
		=dev-haskell/blaze-builder-conduit-0.4*[profile?]
		>=dev-haskell/case-insensitive-0.2[profile?]
		=dev-haskell/conduit-0.4*[profile?]
		>=dev-haskell/data-default-0.3[profile?]
		<dev-haskell/data-default-0.6[profile?]
		>=dev-haskell/fast-logger-0.0.2[profile?]
		=dev-haskell/http-types-0.6*[profile?]
		>=dev-haskell/network-2.2.1.5[profile?]
		<dev-haskell/network-2.4[profile?]
		=dev-haskell/resourcet-0.3*[profile?]
		=dev-haskell/stringsearch-0.3*[profile?]
		>=dev-haskell/text-0.7[profile?]
		<dev-haskell/text-0.12[profile?]
		>=dev-haskell/time-1.1.4[profile?]
		>=dev-haskell/transformers-0.2.2[profile?]
		<dev-haskell/transformers-0.4[profile?]
		=dev-haskell/wai-1.2*[profile?]
		=dev-haskell/zlib-conduit-0.4*[profile?]
		>=dev-lang/ghc-6.12.1"
DEPEND="${RDEPEND}
		test? ( >=dev-haskell/hspec-0.8
			<dev-haskell/hspec-1.3
			dev-haskell/hunit
			dev-haskell/wai-test
			dev-haskell/zlib
			dev-haskell/zlib-bindings
		)
		>=dev-haskell/cabal-1.8"

src_prepare () {
	sed -e  's#data-default              >= 0.3      && < 0.5#data-default >= 0.3  \&\& < 0.6#' \
		-e  's#hspec >= 0.8 && < 1.2#hspec >= 0.8 \&\& < 1.3#' \
		-i ${PN}.cabal
}
