COMMENT =		free engine clone of the Genie Engine (Age of Empires II)

V =			0.6.0
REVISION =		1
DISTNAME =		openage-${V}
CATEGORIES =		games

HOMEPAGE =		https://openage.dev/

MAINTAINER =		Sergey Bronnikov <estetus@gmail.com>

# GPLv3
PERMIT_PACKAGE =	Yes

GH_ACCOUNT =		SFTtech
GH_PROJECT =		openage
GH_COMMIT =		8c7d6306acf42e38de150e024d7323f1421d34c1

COMPILER =		base-clang ports-gcc
COMPILER_LANGS =	c++

MODULES =		devel/cmake \
			lang/python

MODPY_RUNDEP =		No

MODCMAKE_LDFLAGS =	-L${LOCALBASE}/lib

SHARED_LIBS +=		openage		0.0

WANTLIB +=		${COMPILER_LIBCXX} GL Qt6Core Qt6Gui Qt6Multimedia
WANTLIB +=		Qt6Network Qt6OpenGL Qt6Qml Qt6Quick epoxy execinfo
WANTLIB +=		fontconfig freetype harfbuzz m nyan ogg opus opusfile
WANTLIB +=		png pthread util z

LIB_DEPENDS =		audio/libogg \
			audio/opus \
			audio/opusfile \
			devel/harfbuzz \
			graphics/png \
			lang/nyan \
			x11/qt6/qtbase \
			x11/qt6/qtdeclarative \
			x11/qt6/qtmultimedia

BUILD_DEPENDS =		archivers/py-lz4 \
			devel/gettext,-runtime \
			devel/py-setuptools \
			devel/toml11 \
			graphics/py-Pillow \
			lang/cython \
			math/eigen3 \
			math/py-numpy \
			textproc/py-pygments \
			textproc/py-tomli_w \
			www/py-mako

RUN_DEPENDS =		archivers/py-lz4 \
			graphics/py-Pillow \
			math/py-numpy \
			textproc/py-pygments \
			textproc/py-tomli_w \
			www/py-mako

# OpenBSD has no librt; without this, find_library(RT_LIB rt) would leave
# RT_LIB set to RT_LIB-NOTFOUND and the link would fail.
CONFIGURE_ARGS =	-DRT_LIB= \
			-DCMAKE_INCLUDE_PATH=${X11BASE}/include \
			-DCMAKE_LIBRARY_PATH=${X11BASE}/lib \
			-DPython3_EXECUTABLE=${MODPY_BIN} \
			-DWANT_BACKTRACE=false \
			-DWANT_INOTIFY=false \
			-DWANT_GPERFTOOLS_PROFILER=false \
			-DWANT_IWYU=false \
			-DWANT_VULKAN=false \
			-DGLOBAL_CONFIG_DIR=${PREFIX}/share/openage

NO_TEST =		Yes

.include <bsd.port.mk>
