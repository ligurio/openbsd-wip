COMMENT =		real-time log analysis and correlation engine

V =			2.1.0
DISTNAME =		sagan-${V}
CATEGORIES =		security

HOMEPAGE =		https://sagan.readthedocs.io/

MAINTAINER =		Sergey Bronnikov <estetus@gmail.com>

# GPLv2
PERMIT_PACKAGE =	Yes

GH_ACCOUNT =		quadrantsec
GH_PROJECT =		sagan
GH_COMMIT =		3b9b0fa3ad4d07510ad5b63647c95f48b2a14cb1

WANTLIB +=		c fastjson estr lognorm m pcre pthread yaml-0

LIB_DEPENDS =		devel/libestr \
			devel/libfastjson \
			devel/liblognorm \
			devel/libyaml \
			devel/pcre

CONFIGURE_STYLE =	gnu autoreconf
AUTOCONF_VERSION =	2.69
AUTOMAKE_VERSION =	1.15
CONFIGURE_ARGS =	--disable-gzip \
			--disable-esmtp \
			--disable-libpcap

FLAVORS =		geoip redis
FLAVOR ?=

.if ${FLAVOR:Mgeoip}
CONFIGURE_ARGS +=	--enable-geoip
LIB_DEPENDS +=		net/libmaxminddb
WANTLIB +=		maxminddb
.else
CONFIGURE_ARGS +=	--disable-geoip
.endif

.if ${FLAVOR:Mredis}
CONFIGURE_ARGS +=	--enable-redis
LIB_DEPENDS +=		databases/hiredis
WANTLIB +=		hiredis
.else
CONFIGURE_ARGS +=	--disable-redis
.endif

NO_TEST =		Yes

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/src/sagan ${PREFIX}/bin/sagan
	${INSTALL_MAN} ${WRKSRC}/etc/sagan.8 ${PREFIX}/man/man8/sagan.8
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/sagan
	${INSTALL_DATA} ${WRKSRC}/etc/sagan.yaml \
		${PREFIX}/share/examples/sagan/sagan.yaml

.include <bsd.port.mk>
