COMMENT =	command-line alternative to the lcov utility

V =		8.6
DISTNAME =	gcovr-${V}

GH_ACCOUNT =	gcovr
GH_PROJECT =	gcovr
GH_TAGNAME =	${V}

CATEGORIES =	devel sysutils

HOMEPAGE =	https://gcovr.com/

MAINTAINER =	Sergey Bronnikov <estetus@gmail.com>

# BSD
PERMIT_PACKAGE =	Yes

MODULES =		lang/python

MODPY_PYBUILD =		hatch-vcs
MAKE_ENV +=		SETUPTOOLS_SCM_PRETEND_VERSION=${V}

BUILD_DEPENDS =		devel/py-hatch-fancy-pypi-readme

RUN_DEPENDS =		devel/py-colorlog \
			www/py-jinja2 \
			textproc/py-lxml \
			textproc/py-pygments

NO_TEST =		Yes

.include <bsd.port.mk>
