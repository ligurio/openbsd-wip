COMMENT =		camera streaming application

MODGO_MODNAME =		github.com/AlexxIT/go2rtc
MODGO_VERSION =		v1.9.15
DISTNAME =		go2rtc-${MODGO_VERSION}

CATEGORIES =		multimedia

HOMEPAGE =		https://github.com/AlexxIT/go2rtc

MAINTAINER =		Sergey Bronnikov <estetus@gmail.com>

# MIT
PERMIT_PACKAGE =	Yes

WANTLIB +=		c pthread

MODULES =		lang/go

# Patches are applied in WRKDIST; use the Go module source directory.
WRKDIST =		${WRKSRC}

# Upstream tests fail (ffmpeg argument expectations, streams, creds) and
# do not provide a useful signal for packaging.
NO_TEST =		Yes

# FFmpeg is optional and only needed for transcoding and ffmpeg: sources.
# RUN_DEPENDS =		multimedia/ffmpeg

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/go2rtc
	${INSTALL_DATA} ${FILESDIR}/go2rtc.yaml \
		${PREFIX}/share/examples/go2rtc/go2rtc.yaml

.include "modules.inc"
.include <bsd.port.mk>
