COMMENT =		scriptable network stack testing tool

V =			0.0.20261115
DISTNAME =		packetdrill-${V}
CATEGORIES =		net

HOMEPAGE =		https://github.com/nplab/packetdrill

MAINTAINER =		Sergey Bronnikov <estetus@gmail.com>

# GPLv2
PERMIT_PACKAGE =	Yes

GH_ACCOUNT =		nplab
GH_PROJECT =		packetdrill
GH_COMMIT =		ceda311f884bc0542d1cc6937fa5a018b1703878

WRKSRC =		${WRKDIST}/gtests/net/packetdrill

RUN_DEPENDS =		lang/python/3

BUILD_DEPENDS =		devel/bison

MAKE_FILE =		Makefile.OpenBSD
ALL_TARGET =		packetdrill
TEST_TARGET =		tests
NO_CONFIGURE =		Yes

WANTLIB +=		c crypto kvm pcap pthread

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/packetdrill ${PREFIX}/bin/
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/packetdrill
	${INSTALL_DATA} ${WRKSRC}/README ${PREFIX}/share/doc/packetdrill/
	${INSTALL_DATA} ${WRKSRC}/COPYING ${PREFIX}/share/doc/packetdrill/

.include <bsd.port.mk>
