# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5

# ebuild generated by hackport 0.3.2.9999

GTK_MAJ_VER="3"

CABAL_FEATURES="bin lib profile haddock hoogle hscolour"
inherit git-2 haskell-cabal

DESCRIPTION="GUI library for source code management systems"
HOMEPAGE="https://github.com/leksah/haskellVCSGUI"
EGIT_REPO_URI="https://github.com/leksah/haskellVCSGUI.git"
EGIT_SOURCEDIR="${WORKDIR}/${P}"

LICENSE="GPL-2"
SLOT="0/${PV}"
KEYWORDS=""
IUSE=""

S="${WORKDIR}/${P}/${PN}"

RDEPEND=">=dev-haskell/gtk-0.12.5.0:${GTK_MAJ_VER}=[profile?]
		>=dev-haskell/missingh-1.1.0.3:=[profile?]
		<dev-haskell/missingh-1.3:=[profile?]
		>=dev-haskell/mtl-2.0.1.0:=[profile?]
		<dev-haskell/mtl-2.2:=[profile?]
		>=dev-haskell/vcswrapper-0.0.1:=[profile?]
		>=dev-lang/ghc-7.0.1:="
DEPEND="${RDEPEND}
		>=dev-haskell/cabal-1.8"

src_prepare() {
	cabal_chdeps \
		'gtk3 >=0.12.4 && <0.13' 'gtk3 >=0.12.5.0 && <0.13'
}
