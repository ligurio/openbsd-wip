COMMENT =		synchronise calendars and contacts (CalDAV/CardDAV)

V =			0.6.0
DISTNAME =		pimsync-${V}
DISTFILES =		pimsync-v${V}${EXTRACT_SUFX}{v${V}${EXTRACT_SUFX}}
WRKDIST =		${WRKDIR}/pimsync-v${V}
CATEGORIES =		productivity

HOMEPAGE =		https://pimsync.whynothugo.nl/

MAINTAINER =		Sergey Bronnikov <estetus@gmail.com>

# EUPL-1.2
PERMIT_PACKAGE =	Yes

SITES =			https://git.sr.ht/~whynothugo/pimsync/archive/

# digest_auth is patched from a git revision in Cargo.toml; fetch it
# separately and turn the patch into a local path dependency.
DIST_TUPLE +=		srht whynothugo digest_auth_rs \
			3383b863d1d770bbab1d6690929a7f6a3e8c1a93 ../digest_auth_rs

MODULES =		devel/cargo

.include "crates.inc"

CONFIGURE_STYLE =	cargo
SEPARATE_BUILD =	Yes

LIB_DEPENDS =		databases/sqlite3

WANTLIB +=		${MODCARGO_WANTLIB} m sqlite3

# The release tarball does not substitute the version in build.rs.
MAKE_ENV +=		PIMSYNC_VERSION=${V}

# Let sqlite3-src pick up the system SQLite instead of building its own.
MAKE_ENV +=		PKG_CONFIG_PATH=${LOCALBASE}/lib/pkgconfig

NO_TEST =		Yes

post-install:
	${INSTALL_MAN} ${WRKSRC}/pimsync.1 ${PREFIX}/man/man1/
	${INSTALL_MAN} ${WRKSRC}/pimsync.conf.5 ${PREFIX}/man/man5/
	${INSTALL_MAN} ${WRKSRC}/pimsync-migration.7 ${PREFIX}/man/man7/
	${INSTALL_MAN} ${WRKSRC}/pimsync-status.7 ${PREFIX}/man/man7/
	${INSTALL_DATA_DIR} ${PREFIX}/share/zsh/site-functions
	${INSTALL_DATA} ${WRKSRC}/contrib/_pimsync \
		${PREFIX}/share/zsh/site-functions/
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/rc.d
	${INSTALL_SCRIPT} ${FILESDIR}/pimsync.rc \
		${PREFIX}/share/examples/rc.d/pimsync

.include <bsd.port.mk>
