# Copyright 1999-2007 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header:  $

CABAL_FEATURES="profile haddock lib"
inherit haskell-cabal

DESCRIPTION="Simple wikitext-like markup format implementation."
HOMEPAGE="http://hackage.haskell.org/cgi-bin/hackage-scripts/package/hmarkup"
SRC_URI="http://hackage.haskell.org/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

DEPEND=">=dev-lang/ghc-6.4.2
		dev-haskell/mtl
		dev-haskell/network
		>=dev-haskell/xhtml-3000.0.0"
