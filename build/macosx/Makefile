SHELL=/bin/bash

CC=clang
CFLAGS=-arch i386 -arch x86_64 -mmacosx-version-min=10.6 -Wall -Wno-unknown-pragmas -Werror -fPIC
LDFLAGS=-arch i386 -arch x86_64 -mmacosx-version-min=10.6 -shared
SRCDIR=../../src
PREFIX=~
SDTPATH=Library/SoundDesignToolkit

SDTDIR=$(SRCDIR)/SDT
SDTSRCS=$(wildcard $(SDTDIR)/*.c)
SDTOBJS=$(patsubst %.c,%.o,$(SDTSRCS))

MAXDIR=$(SRCDIR)/Max6
MAXSRCS = $(wildcard $(MAXDIR)/*.c)
MAXOBJS = $(patsubst %.c,%.mxo,$(MAXSRCS))

MAXSDKDIR=../../3rdparty/Max6SDK
MAXSDKVERSION=6.1.4

FFTW3DIR=../../3rdparty/fftw3/macosx

all: max

max: sdt $(MAXOBJS)

$(MAXDIR)/%.mxo: EXTNAME=$(patsubst $(MAXDIR)/%.mxo,%,$@)
$(MAXDIR)/%.mxo: RFC1034=$(patsubst %~,%-,$(EXTNAME))
$(MAXDIR)/%.mxo: $(MAXDIR)/%.o
	rm -rf $@
	cp -a Max6External.mxo $@
	sed -i "" s/\$${PRODUCT_NAME}/$(EXTNAME)/g $@/Contents/Info.plist
	sed -i "" s/\$${PRODUCT_NAME:rfc1034identifier}/$(RFC1034)/g $@/Contents/Info.plist
	sed -i "" s/\$${PRODUCT_VERSION}/$(MAXSDKVERSION)/g $@/Contents/Info.plist
	$(CC) $(LDFLAGS) @$(MAXSDKDIR)/max-includes/c74_linker_flags.txt \
	-L$(MAXSDKDIR)/max-includes -L$(MAXSDKDIR)/msp-includes -L$(MAXSDKDIR)/jit-includes \
	-F$(MAXSDKDIR)/max-includes -F$(MAXSDKDIR)/msp-includes -F$(MAXSDKDIR)/jit-includes \
	-F$(SDTDIR) -framework SDT -framework MaxAudioAPI $< -o $@/Contents/MacOS/$(EXTNAME)

$(MAXDIR)/%.o: $(MAXDIR)/%.c
	$(CC) $(CFLAGS) -DDENORM_WANT_FIX=1 -DNO_TRANSLATION_SUPPORT=1 -DC74_NO_DEPRECATION \
	-DMAC_VERSION -DMAC_EXT_VERSION -Dpowerc -fvisibility=hidden \
	-I$(MAXSDKDIR)/max-includes -I$(MAXSDKDIR)/msp-includes -I$(MAXSDKDIR)/jit-includes \
	-F$(MAXSDKDIR)/max-includes -F$(MAXSDKDIR)/msp-includes -F$(MAXSDKDIR)/jit-includes \
	-F$(SDTDIR) -include $(MAXSDKDIR)/max-includes/macho-prefix.pch -c $< -o $@

sdt: $(SDTOBJS)
	rm -rf $(SDTDIR)/SDT.framework
	cp -a SDT.framework $(SDTDIR)
	mkdir -p $(SDTDIR)/SDT.framework/Versions/A/Headers
	mkdir -p $(SDTDIR)/SDT.framework/Versions/A/Resources/fftw3
	cp -a $(FFTW3DIR)/* $(SDTDIR)/SDT.framework/Resources/fftw3
	install_name_tool -id @loader_path/Resources/fftw3/libfftw3.3.dylib \
	$(SDTDIR)/SDT.framework/Resources/fftw3/libfftw3.3.dylib
	cp -a $(SDTDIR)/*.h $(SDTDIR)/SDT.framework/Headers
	$(CC) $(LDFLAGS) -L$(SDTDIR)/SDT.framework/Resources/fftw3 $(SDTOBJS) \
	-o $(SDTDIR)/SDT.framework/Versions/A/SDT -lfftw3

$(SDTDIR)/%.o: $(SDTDIR)/%.c
	$(CC) $(CFLAGS) -I$(FFTW3DIR) -c $< -o $@

install:
	mkdir -p $(PREFIX)/Library/Frameworks
	mkdir -p $(PREFIX)/$(SDTPATH)/Max6/{externals,patches}
	cp -a $(SDTDIR)/SDT.framework $(PREFIX)/Library/Frameworks
	cp -a $(MAXDIR)/*.mxo $(PREFIX)/$(SDTPATH)/Max6/externals
	cp -a ../../patches/Max6/* $(PREFIX)/$(SDTPATH)/Max6/patches

uninstall:
	rm -rf $(PREFIX)/Library/Frameworks/SDT.framework
	rm -rf $(PREFIX)/$(SDTPATH)

clean:
	rm -rf $(SDTDIR)/SDT.framework
	rm -rf $(SDTDIR)/*.o
	rm -rf $(MAXDIR)/*.mxo
	rm -rf $(MAXDIR)/*.o
