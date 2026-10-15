COMMENT =		minimalistic ActivityPub instance

V =			2.96
DISTNAME =		snac-${V}
DISTFILES =		${V}${EXTRACT_SUFX}
CATEGORIES =		www

HOMEPAGE =		https://codeberg.org/grunfink/snac2

MAINTAINER =		Sergey Bronnikov <estetus@gmail.com>

# MIT
PERMIT_PACKAGE =	Yes

SITES =			https://codeberg.org/grunfink/snac2/archive/
DIST_SUBDIR =		snac

WANTLIB +=		c crypto curl pthread

LIB_DEPENDS =		net/curl

WRKDIST =		${WRKDIR}/snac2

NO_CONFIGURE =		Yes
NO_TEST =		Yes
ALL_TARGET =		snac

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/snac ${PREFIX}/bin/snac
	${INSTALL_MAN} ${WRKSRC}/doc/snac.1 ${PREFIX}/man/man1/snac.1
	${INSTALL_MAN} ${WRKSRC}/doc/snac.5 ${PREFIX}/man/man5/snac.5
	${INSTALL_MAN} ${WRKSRC}/doc/snac.8 ${PREFIX}/man/man8/snac.8
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/snac
	${INSTALL_DATA} ${WRKSRC}/examples/snac_openbsd \
		${PREFIX}/share/examples/snac/snac.rc
	${INSTALL_DATA} ${WRKSRC}/examples/snac_openbsd_login_conf \
		${PREFIX}/share/examples/snac/login.conf

.include <bsd.port.mk>
