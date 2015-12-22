SHELL=/bin/bash

CC=gcc
CFLAGS=-Wall -Wno-unknown-pragmas -Werror
LDFLAGS=-shared
SRCDIR=../../src
DSTDIR=../../SoundDesignToolkit

SDTDIR=$(SRCDIR)/SDT
SDTSRCS=$(wildcard $(SDTDIR)/*.c)
SDTOBJS=$(patsubst %.c,%.o,$(SDTSRCS))

MAXDIR=$(SRCDIR)/Max6
MAXSRCS=$(wildcard $(MAXDIR)/*.c)
MAXOBJS=$(patsubst %.c,%.mxe,$(MAXSRCS))

MAXSDKDIR=../../3rdparty/Max6SDK
MAXSDKVERSION=6.1.4

PDDIR=$(SRCDIR)/Pd
PDSRCS=$(wildcard $(PDDIR)/*.c)
PDOBJS=$(patsubst %.c,%.dll,$(PDSRCS))

PDSDKDIR=../../3rdparty/Pd
PDSDKVERSION=0.43.4

FFTW3DIR=../../3rdparty/fftw3/windows

all: sdt max pd

pd: sdt $(PDOBJS)

$(PDDIR)/%.dll: $(PDDIR)/%.o
	$(CC) $(LDFLAGS) -L$(SDTDIR) -L$(PDSDKDIR) $< -o $@ -lSDT -lpd

$(PDDIR)/%.o: $(PDDIR)/%.c
	$(CC) $(CFLAGS) -I$(SRCDIR) -I$(PDSDKDIR) -c $< -o $@

max: sdt $(MAXOBJS)

$(MAXDIR)/%.mxe: EXTNAME=$(patsubst $(MAXDIR)/%.mxe,%,$@)
$(MAXDIR)/%.mxe: $(MAXDIR)/%.o
	cp Info.def $(MAXDIR)/$(EXTNAME).def
	sed -i $(MAXDIR)/$(EXTNAME).def -e s/\$${PRODUCT_NAME}/$(EXTNAME)/g 
	$(CC) $(LDFLAGS) -L$(MAXSDKDIR)/max-includes -L$(MAXSDKDIR)/msp-includes -L$(MAXSDKDIR)/jit-includes -L$(SDTDIR) \
	$< $(MAXDIR)/$(EXTNAME).def -o $@ -lMaxAPI -lMaxAudio -lSDT

$(MAXDIR)/%.o: $(MAXDIR)/%.c
	$(CC) $(CFLAGS) -DDENORM_WANT_FIX=1 -DNO_TRANSLATION_SUPPORT=1 -DC74_NO_DEPRECATION \
	-DWIN_VERSION -DWIN_EXT_VERSION -fvisibility=hidden \
	-I$(MAXSDKDIR)/max-includes -I$(MAXSDKDIR)/msp-includes -I$(MAXSDKDIR)/jit-includes \
	-I$(SRCDIR) -c $< -o $@

sdt: $(SDTOBJS)
	$(CC) $(LDFLAGS) -L$(FFTW3DIR) $(SDTOBJS) -o $(SDTDIR)/libSDT.dll -lfftw3-3

$(SDTDIR)/%.o: $(SDTDIR)/%.c
	$(CC) $(CFLAGS) -I$(FFTW3DIR) -c $< -o $@
	
install:
	mkdir -p "$(DSTDIR)"/SoundDesignToolkit/{externals,support}
	cp -a $(FFTW3DIR)/libfftw* "$(DSTDIR)"/SoundDesignToolkit/support
	cp -a $(SDTDIR)/libSDT.dll "$(DSTDIR)"/SoundDesignToolkit/support
	cp -a $(MAXDIR)/*.mxe "$(DSTDIR)"/SoundDesignToolkit/externals
	cp -a ../../Max6/* "$(DSTDIR)"/SoundDesignToolkit

uninstall:
	rm -rf "$(DSTDIR)"/SoundDesignToolkit

clean:
	rm -rf $(SDTDIR)/libSDT.dll
	rm -rf $(SDTDIR)/*.o
	rm -rf $(MAXDIR)/*.mxe
	rm -rf $(MAXDIR)/*.def
