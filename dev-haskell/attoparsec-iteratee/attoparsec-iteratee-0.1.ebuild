# Copyright 1999-2009 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header:  $

CABAL_FEATURES="lib profile haddock hscolour"
inherit haskell-cabal

DESCRIPTION="An adapter to convert attoparsec Parsers into blazing-fast Iteratees"
HOMEPAGE="http://github.com/gregorycollins"
SRC_URI="http://hackage.haskell.org/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND=">=dev-lang/ghc-6.6.1
		dev-haskell/attoparsec
		~dev-haskell/iteratee-0.3.4
		<dev-haskell/monads-fd-0.1.0.0
		<dev-haskell/transformers-0.2.0.0"
DEPEND=">=dev-haskell/cabal-1.6
		${RDEPEND}"
