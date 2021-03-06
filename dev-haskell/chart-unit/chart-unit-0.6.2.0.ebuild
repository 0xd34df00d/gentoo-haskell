# Copyright 1999-2018 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

# ebuild generated by hackport 0.5.5.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="Native haskell charts"
HOMEPAGE="https://github.com/tonyday567/chart-unit#readme"
SRC_URI="https://hackage.haskell.org/package/${P}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND="dev-haskell/colour:=[profile?]
	dev-haskell/data-default:=[profile?]
	dev-haskell/diagrams-lib:=[profile?]
	dev-haskell/diagrams-svg:=[profile?]
	dev-haskell/foldl:=[profile?]
	dev-haskell/formatting:=[profile?]
	dev-haskell/generic-lens:=[profile?]
	dev-haskell/generic-lens-labels:=[profile?]
	dev-haskell/lens:=[profile?]
	dev-haskell/linear:=[profile?]
	>=dev-haskell/mwc-probability-2.0.2:=[profile?]
	dev-haskell/mwc-random:=[profile?]
	dev-haskell/numhask:=[profile?]
	dev-haskell/numhask-histogram:=[profile?]
	dev-haskell/numhask-prelude:=[profile?]
	dev-haskell/numhask-range:=[profile?]
	dev-haskell/palette:=[profile?]
	dev-haskell/primitive:=[profile?]
	dev-haskell/protolude:=[profile?]
	dev-haskell/scientific:=[profile?]
	dev-haskell/svg-builder:=[profile?]
	dev-haskell/svgfonts:=[profile?]
	dev-haskell/text:=[profile?]
	>=dev-lang/ghc-7.8.2:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.18.1.3
	test? ( dev-haskell/doctest
		dev-haskell/tasty
		dev-haskell/tasty-hspec )
"
