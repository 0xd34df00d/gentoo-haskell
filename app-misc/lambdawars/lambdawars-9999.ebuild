# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=5

# ebuild generated by hackport 0.3.6.9999

CABAL_FEATURES="bin test-suite"
inherit eutils git-r3 haskell-cabal

MY_PN="LambdaWars"
MY_P="${MY_PN}-${PV}"

DESCRIPTION="RoboWars for London Haskell User Group"
HOMEPAGE="https://github.com/andreyLevushkin/LambdaWars"
EGIT_REPO_URI="https://github.com/andreyLevushkin/LambdaWars.git"

LICENSE="MIT"
SLOT="0"
KEYWORDS=""
IUSE=""

RDEPEND=""
DEPEND="${RDEPEND}
	dev-haskell/ac-angle
	dev-haskell/ac-vector
	dev-haskell/ac-vector-fancy
	>=dev-haskell/cabal-1.8
	>=dev-haskell/fclabels-2.0
	dev-haskell/glut
	dev-haskell/monad-loops
	dev-haskell/monadrandom
	dev-haskell/mtl
	>=dev-haskell/opengl-2.9
	dev-haskell/random
	>=dev-lang/ghc-7.4.1
	test? ( dev-haskell/blaze-svg
		dev-haskell/hunit
		dev-haskell/quickcheck
		>=dev-haskell/snap-core-0.9.2.2
		>=dev-haskell/snap-server-0.9.2.4
		dev-haskell/test-framework
		dev-haskell/test-framework-hunit
		dev-haskell/test-framework-quickcheck2 )
"

src_prepare() {
	epatch "${FILESDIR}"/${P}-fclabels-2.0.patch
}
