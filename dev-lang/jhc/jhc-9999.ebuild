# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI="3"

inherit base darcs autotools

DESCRIPTION="jhc is a haskell compiler"
HOMEPAGE="http://repetae.net/john/computer/jhc/"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

EDARCS_REPOSITORY="http://repetae.net/repos/jhc"
EDARCS_GET_CMD="get --partial"

DEPEND=">=dev-lang/ghc-6.10
		dev-haskell/binary
		>=dev-haskell/drift-2.1.1
		dev-haskell/fgl
		dev-haskell/happy
		dev-haskell/mtl
		dev-haskell/readline
		dev-haskell/regex-compat
		dev-haskell/utf8-string
		dev-haskell/zlib"
DEPEND="${DEPEND}	virtual/libiconv" # for source mangling
RDEPEND=""

PATCHES=("${FILESDIR}/jhc-9999-ghc-7-build.patch")

src_prepare() {
	base_src_prepare
	eautoreconf

	# (UTF-8 source breaks DrIFT. workaround DrIFT bug)
	cd "${S}/src/E/"
	mv TypeCheck.hs TypeCheck.hs.UTF-8
	iconv -f UTF-8 -t ASCII -c TypeCheck.hs.UTF-8 > TypeCheck.hs || die "unable to recode TypeCheck.hs to ASCII"
}

src_configure() {
	econf || die "econf failed"
	darcs init # workaround missing history (ChageLog generation)
	darcs tag --author="portage's jhc ebuild" phony-useless-tag
}

src_compile() {
	emake jhc || die "'emake jhc' failed"
	# jhc's makefile does not bother with library depends
	# so we don't as well. Thus: -j1
	emake -j1 libs || die "'emake libs' failed"
}

src_install() {
	emake DESTDIR="${D}" install || die "emake install failed."
}
