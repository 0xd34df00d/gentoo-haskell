# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header:  $

EAPI="3"

CABAL_FEATURES="bin lib profile haddock hscolour"
inherit haskell-cabal

DESCRIPTION="HTTP client package with enumerator interface and HTTPS support."
HOMEPAGE="http://github.com/snoyberg/http-enumerator"
SRC_URI="http://hackage.haskell.org/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND="=dev-haskell/attoparsec-0.8*
		=dev-haskell/attoparsec-enumerator-0.2*
		<dev-haskell/blaze-builder-0.4
		=dev-haskell/blaze-builder-enumerator-0.2*
		=dev-haskell/enumerator-0.4*
		=dev-haskell/failure-0.1*
		<dev-haskell/mtl-2.1
		=dev-haskell/network-2.3*
		=dev-haskell/tls-0.3*
		=dev-haskell/transformers-0.2*
		<dev-haskell/utf8-string-0.4
		=dev-haskell/wai-0.3*
		=dev-haskell/zlib-bindings-0.0*
		>=dev-lang/ghc-6.10.1"
DEPEND="${RDEPEND}
		>=dev-haskell/cabal-1.6"

src_prepare() {
	sed -e 's@blaze-builder         >= 0.2.1   && < 0.3@blaze-builder         >= 0.2.1   \&\& < 0.4@' \
		-i "${S}/${PN}.cabal" || die "Could not loosen blaze-builder dependency in ${S}/${PN}.cabal"
}
