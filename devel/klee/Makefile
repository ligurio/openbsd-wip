COMMENT =		symbolic execution engine built on top of LLVM

V =			3.3
DISTNAME =		klee-${V}
CATEGORIES =		devel

# KLEE does not support 32-bit targets.
ONLY_FOR_ARCHS =	aarch64 amd64 mips64 mips64el powerpc64 riscv64 sparc64

HOMEPAGE =		https://klee-se.org/

MAINTAINER =		Sergey Bronnikov <estetus@gmail.com>

# UIUC/NCSA
PERMIT_PACKAGE =	Yes

GH_ACCOUNT =		klee
GH_PROJECT =		klee
GH_TAGNAME =		v${V}

COMPILER =		base-clang ports-gcc
COMPILER_LANGS =	c++

MODULES =		devel/cmake \
			lang/clang \
			lang/python

MODCLANG_VERSION =	19
MODCLANG_COMPILER_LINKS =	No

MODPY_ADJ_FILES =	tools/klee-stats/klee-stats \
			tools/ktest-tool/ktest-tool \
			tools/klee-zesti/klee-zesti

SHARED_LIBS +=		kleeRuntest	1.0

LIB_DEPENDS =		${MODCLANG_LIB_DEPENDS} \
			databases/sqlite3 \
			math/z3

RUN_DEPENDS =		devel/py-tabulate

WANTLIB +=		${COMPILER_LIBCXX} c m pthread sqlite3 util z
WANTLIB +=		llvm${MODCLANG_VERSION}/lib/LLVM
WANTLIB +=		z3

# uClibc (and therefore KLEE's POSIX runtime and real program support) is
# Linux-only, so keep the POSIX runtime disabled.
KLEE_LLVM_DIR =		${LOCALBASE}/llvm${MODCLANG_VERSION}/lib/cmake/llvm

CONFIGURE_ARGS =	-DLLVM_DIR=${KLEE_LLVM_DIR} \
			-DLLVMCC=${LOCALBASE}/bin/clang-${MODCLANG_VERSION} \
			-DLLVMCXX=${LOCALBASE}/bin/clang++-${MODCLANG_VERSION} \
			-DLLVM_LINK=${LOCALBASE}/bin/llvm-link-${MODCLANG_VERSION} \
			-DLLVM_AR=${LOCALBASE}/bin/llvm-ar-${MODCLANG_VERSION} \
			-DLLVM_AS=${LOCALBASE}/bin/llvm-as-${MODCLANG_VERSION} \
			-DENABLE_DOCS=OFF \
			-DENABLE_KLEE_ASSERTS=OFF \
			-DENABLE_KLEE_EH_CXX=OFF \
			-DENABLE_KLEE_LIBCXX=OFF \
			-DENABLE_POSIX_RUNTIME=OFF \
			-DENABLE_SOLVER_STP=OFF \
			-DENABLE_SOLVER_Z3=ON \
			-DENABLE_TCMALLOC=OFF \
			-DENABLE_UNIT_TESTS=OFF \
			-DENABLE_SYSTEM_TESTS=OFF

NO_TEST =		Yes

.include <bsd.port.mk>
