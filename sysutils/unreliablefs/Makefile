COMMENT =		FUSE-based fault injection filesystem

V =			0.2.0
DISTNAME =		unreliablefs-${V}
CATEGORIES =		sysutils

HOMEPAGE =		https://github.com/ligurio/unreliablefs

MAINTAINER =		Sergey Bronnikov <estetus@gmail.com>

# MIT; BSD-3-Clause (inih)
PERMIT_PACKAGE =	Yes

GH_ACCOUNT =		ligurio
GH_PROJECT =		unreliablefs
GH_COMMIT =		fa432252c117e82a0a36343895936f4fae246b56

MODULES =		devel/cmake

ALL_TARGET =		unreliablefs

WANTLIB +=		c fuse

NO_TEST =		Yes

.include <bsd.port.mk>
