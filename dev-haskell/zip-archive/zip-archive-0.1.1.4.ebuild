# Copyright 1999-2009 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header:  $

CABAL_FEATURES="bin lib profile haddock hscolour"
inherit haskell-cabal

DESCRIPTION="Library for creating and modifying zip archives."
HOMEPAGE="http://hackage.haskell.org/cgi-bin/hackage-scripts/package/zip-archive"
SRC_URI="http://hackage.haskell.org/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

DEPEND=">=dev-lang/ghc-6.6.1
		dev-haskell/binary
		>=dev-haskell/bytestring-0.9.0
		>=dev-haskell/cabal-1.2
		>=dev-haskell/digest-0.0.0.1
		dev-haskell/filepath
		dev-haskell/mtl
		>=dev-haskell/utf8-string-0.3.1
		dev-haskell/zlib"
