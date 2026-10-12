COMMENT =		data description language for the openage engine

V =			0.3.1
DISTNAME =		nyan-${V}
CATEGORIES =		lang

HOMEPAGE =		https://github.com/SFTtech/nyan

# LGPLv3
PERMIT_PACKAGE =	Yes

GH_ACCOUNT =		SFTtech
GH_PROJECT =		nyan
GH_TAGNAME =		v${V}

SHARED_LIBS +=		nyan		1.0

COMPILER =		base-clang ports-gcc
COMPILER_LANGS =	c++

MODULES =		devel/cmake

WANTLIB +=		c execinfo m ${COMPILER_LIBCXX}

CONFIGURE_ARGS =	-DDOXYGEN_ENABLE=OFF \
			-DREGISTER_USERPACKAGE=OFF

NO_TEST =		Yes

.include <bsd.port.mk>
