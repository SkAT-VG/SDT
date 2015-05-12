SHELL=/bin/bash

CC=gcc
CFLAGS=-Wall -Wno-unknown-pragmas -Werror
LDFLAGS=-shared
SRCDIR=../../src
PREFIX=C:
SDTPATH=SoundDesignToolkit

SDTDIR=$(SRCDIR)/SDT
SDTSRCS=$(wildcard $(SDTDIR)/*.c)
SDTOBJS=$(patsubst %.c,%.o,$(SDTSRCS))

MAXDIR=$(SRCDIR)/Max6
MAXSRCS=$(wildcard $(MAXDIR)/*.c)
MAXOBJS=$(patsubst %.c,%.mxe,$(MAXSRCS))

MAXSDKDIR=../../3rdparty/Max6SDK
MAXSDKVERSION=6.1.4

FFTW3DIR=../../3rdparty/fftw3/windows

all: max

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
	mkdir -p $(PREFIX)/$(SDTPATH)/Max6/{externals,patches}
	cp -a $(FFTW3DIR)/libfftw* $(PREFIX)/$(SDTPATH)
	cp -a $(SDTDIR)/libSDT.dll $(PREFIX)/$(SDTPATH)
	cp -a $(MAXDIR)/*.mxe $(PREFIX)/$(SDTPATH)/Max6/externals
	cp -a ../../patches/Max6/* $(PREFIX)/$(SDTPATH)/Max6/patches

uninstall:
	rm -rf $(PREFIX)/$(SDTPATH)

clean:
	rm -rf $(SDTDIR)/libSDT.dll
	rm -rf $(SDTDIR)/*.o
	rm -rf $(MAXDIR)/*.mxe
	rm -rf $(MAXDIR)/*.def
