# Copyright 1999-2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

# ebuild generated by hackport 0.6.4.9999
#hackport: flags: -test,-buildtests

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="Versatile logging framework"
HOMEPAGE="https://github.com/hvr/hslogger/wiki"
SRC_URI="https://hackage.haskell.org/package/${P}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86 ~amd64-linux"
IUSE="+network-3"

RDEPEND=">=dev-haskell/old-locale-1.0:=[profile?] <dev-haskell/old-locale-1.1:=[profile?]
	>=dev-lang/ghc-7.4.1:=
	network-3? ( >=dev-haskell/network-3.0:=[profile?] <dev-haskell/network-3.2:=[profile?]
				>=dev-haskell/network-bsd-2.8.1:=[profile?] <dev-haskell/network-bsd-2.9:=[profile?] )
	!network-3? ( >=dev-haskell/network-2.6:=[profile?] <dev-haskell/network-2.9:=[profile?] )
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.12
	test? ( || ( ( >=dev-haskell/hunit-1.3 <dev-haskell/hunit-1.4 )
			( >=dev-haskell/hunit-1.6 <dev-haskell/hunit-1.7 ) ) )
"

src_configure() {
	haskell-cabal_src_configure \
		--flag=-buildtests \
		$(cabal_flag network-3 network--gt-3_0_0) \
		--flag=-test
}
