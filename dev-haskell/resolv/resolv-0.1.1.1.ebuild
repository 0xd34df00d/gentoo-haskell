# Copyright 1999-2018 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

# ebuild generated by hackport 0.5.4

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="Domain Name Service (DNS) lookup via the libresolv standard library routines"
HOMEPAGE="http://hackage.haskell.org/package/resolv"
SRC_URI="mirror://hackage/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="GPL-3"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE=""

RESTRICT=test # fails to build test suite

RDEPEND=">=dev-haskell/base16-bytestring-0.1:=[profile?] <dev-haskell/base16-bytestring-0.2:=[profile?]
	>=dev-lang/ghc-7.10.1:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.22.2.0
	test? ( >=dev-haskell/tasty-0.11.2
		>=dev-haskell/tasty-hunit-0.9.2 )
"

src_prepare() {
	default

	cabal_chdeps \
		'base              >= 4.5 && <4.11' 'base              >= 4.5' \
		'tasty         >= 0.11.2  && < 0.12' 'tasty         >= 0.11.2' \
		'tasty-hunit   >= 0.9.2   && < 0.10' 'tasty-hunit   >= 0.9.2'
}
