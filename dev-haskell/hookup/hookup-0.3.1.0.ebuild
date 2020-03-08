# Copyright 1999-2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

# ebuild generated by hackport 0.6.4

CABAL_FEATURES="lib profile haddock hoogle hscolour"
inherit haskell-cabal

DESCRIPTION="Abstraction over creating network connections with SOCKS5 and TLS"
HOMEPAGE="https://github.com/glguy/irc-core"
SRC_URI="https://hackage.haskell.org/package/${P}/${P}.tar.gz"

LICENSE="ISC"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND=">=dev-haskell/attoparsec-0.13:=[profile?] <dev-haskell/attoparsec-0.14:=[profile?]
	>=dev-haskell/hsopenssl-0.11.2.3:=[profile?] <dev-haskell/hsopenssl-0.12:=[profile?]
	>=dev-haskell/hsopenssl-x509-system-0.1:=[profile?] <dev-haskell/hsopenssl-x509-system-0.2:=[profile?]
	>=dev-haskell/network-2.6:=[profile?] <dev-haskell/network-3.2:=[profile?]
	>=dev-lang/ghc-8.4.3:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-2.2.0.1
"