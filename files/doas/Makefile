.PATH: ${SRCTOP}/contrib/doas

CONFS=		doas.conf
CONFSMODE=	0640
PROG=		doas
MAN=		doas.1 doas.conf.5
BINOWN=		root
BINMODE=	4555
SRCS=		parse.y doas.c env.c execvpe.c

CFLAGS+= -I${.CURDIR} -I${SRCTOP}/contrib/doas
CFLAGS+= -Wall -DUSE_PAM -DHAVE_LOGIN_CAP_H -DDOAS_CONF=\"/etc/doas.conf\"
LDFLAGS+= -lpam -lutil

WARNS?=	0

.include <bsd.prog.mk>
