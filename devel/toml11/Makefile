PKG_ARCH =		*

COMMENT =		C++11 header-only TOML parser and encoder

V =			4.4.0
DISTNAME =		toml11-${V}
CATEGORIES =		devel

HOMEPAGE =		https://github.com/ToruNiina/toml11

# MIT
PERMIT_PACKAGE =	Yes

GH_ACCOUNT =		ToruNiina
GH_PROJECT =		toml11
GH_TAGNAME =		v${V}

MODULES =		devel/cmake

CONFIGURE_ARGS =	-DTOML11_INSTALL=ON \
			-DTOML11_BUILD_EXAMPLES=OFF \
			-DTOML11_BUILD_TESTS=OFF \
			-DTOML11_BUILD_TOML_TESTS=OFF \
			-DTOML11_PRECOMPILE=OFF \
			-DTOML11_ENABLE_ACCESS_CHECK=OFF

NO_TEST =		Yes

.include <bsd.port.mk>
