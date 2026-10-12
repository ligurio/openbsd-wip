COMMENT =		in-memory database and Lua application server

V =			3.8.1
DISTNAME =		tarantool-${V}
CATEGORIES =		databases

HOMEPAGE =		https://www.tarantool.io/

MAINTAINER =		Sergey Bronnikov <estetus@gmail.com>

# BSD2
PERMIT_PACKAGE =	Yes

SITES =			https://download.tarantool.org/tarantool/src/ \
			https://hb.bizmrg.com/tarantool_repo/sources/

MODULES =		devel/cmake

COMPILER =		base-clang ports-gcc

BUILD_DEPENDS =		devel/gmake \
			devel/m4

LIB_DEPENDS =		archivers/zstd \
			converters/libiconv \
			devel/libyaml \
			devel/readline \
			net/curl \
			textproc/icu4c

WANTLIB +=		${COMPILER_LIBCXX} c crypto curses curl ereadline form \
			iconv icudata icui18n icuuc m pthread ssl yaml-0 zstd

CONFIGURE_ARGS =	-DCMAKE_BUILD_TYPE=RelWithDebInfo \
			-DENABLE_BACKTRACE=OFF \
			-DENABLE_BUNDLED_ICU=OFF \
			-DENABLE_BUNDLED_LIBCURL=OFF \
			-DENABLE_BUNDLED_LIBYAML=OFF \
			-DENABLE_BUNDLED_OPENSSL=OFF \
			-DENABLE_BUNDLED_READLINE=OFF \
			-DENABLE_BUNDLED_ZLIB=OFF \
			-DENABLE_BUNDLED_ZSTD=OFF \
			-DREADLINE_INCLUDE_DIR=${LOCALBASE}/include/ereadline

NO_TEST =		Yes

post-patch:
	echo ${V}-0 > ${WRKSRC}/VERSION

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/tarantool
	${SUBST_CMD} -c -m 644 ${FILESDIR}/init.lua \
		${PREFIX}/share/examples/tarantool/init.lua
	-rmdir ${PREFIX}/lib/tarantool ${PREFIX}/share/tarantool

.include <bsd.port.mk>
