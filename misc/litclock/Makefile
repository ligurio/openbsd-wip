COMMENT =	clock using time quotes from literature

V =		0.2.0
DISTNAME =	litclock-${V}
CATEGORIES =	misc

HOMEPAGE =	https://github.com/ligurio/litclock/

MAINTAINER =	Sergey Bronnikov <estetus@gmail.com>

# command code: BSD-2-Clause; quote data: CC BY-NC-SA 2.5
PERMIT_PACKAGE =	quote data is CC BY-NC-SA 2.5 (non-commercial)
PERMIT_DISTFILES =	Yes

GH_ACCOUNT =	ligurio
GH_PROJECT =	litclock
GH_COMMIT =	10b57ef7b1a4a929135ae15fa1d46260d09daea9

PKG_ARCH =	*

RUN_DEPENDS =	shells/bash

NO_CONFIGURE =	Yes
NO_BUILD =	Yes
NO_TEST =	Yes

do-install:
	${INSTALL_SCRIPT} ${WRKSRC}/litclock ${PREFIX}/bin/litclock
	${INSTALL_MAN} ${WRKSRC}/litclock.1 ${PREFIX}/man/man1/litclock.1
	${INSTALL_DATA_DIR} ${PREFIX}/share/litclock
	${INSTALL_DATA} ${WRKSRC}/quotes/quotes_en.csv \
		${WRKSRC}/quotes/quotes_pt.csv \
		${WRKSRC}/quotes/quotes_ru.csv ${PREFIX}/share/litclock/

.include <bsd.port.mk>
