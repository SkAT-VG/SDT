SHELL=/bin/bash

CC=clang
MACARCH=-arch i386 -arch x86_64
MACVERSION=-mmacosx-version-min=10.6
CFLAGS=$(MACARCH) $(MACVERSION) -Wall -Wno-unknown-pragmas -Werror -O -fno-common
LDFLAGS=$(MACARCH) $(MACVERSION) -dynamiclib
SRCDIR=../../src
DSTDIR=/Applications/Max\ 6.1/packages/SoundDesignToolkit

SDTDIR=$(SRCDIR)/SDT
SDTSRCS=$(wildcard $(SDTDIR)/*.c)
SDTOBJS=$(patsubst %.c,%.o,$(SDTSRCS))

MAXDIR=$(SRCDIR)/Max6
MAXSRCS = $(wildcard $(MAXDIR)/*.c)
MAXOBJS = $(patsubst %.c,%.mxo,$(MAXSRCS))

MAXSDKDIR=../../3rdparty/Max6SDK
MAXSDKVERSION=6.1.4

PDDIR=$(SRCDIR)/Pd
PDSRCS=$(wildcard $(PDDIR)/*.c)
PDOBJS=$(patsubst %.c,%.pd_darwin,$(PDSRCS))

PDSDKDIR=../../3rdparty/Pd
PDVERSION=0.41.4

FFTW3DIR=../../3rdparty/fftw3/macosx

all: sdt max

max: sdt $(MAXOBJS)

$(MAXDIR)/%.mxo: EXTNAME=$(patsubst $(MAXDIR)/%.mxo,%,$@)
$(MAXDIR)/%.mxo: RFC1034=$(patsubst %~,%-,$(EXTNAME))
$(MAXDIR)/%.mxo: $(MAXDIR)/%.o
	rm -rf $@
	cp -a Max6External.mxo $@
	mkdir -p $@/Contents/MacOS
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

pd: sdt $(PDOBJS)

$(PDDIR)/%.pd_darwin: $(PDDIR)/%.o
	$(CC) $(LDFLAGS) -F$(SDTDIR) -framework SDT $< -o $@

$(PDDIR)/%.o: $(PDDIR)/%.c
	$(CC) $(CFLAGS) -I$(SRCDIR) -I$(PDSDKDIR) -F$(SDTDIR) -c $< -o $@

sdt: $(SDTOBJS)
	cp -a SDT.framework $(SDTDIR)
	mkdir -p $(SDTDIR)/SDT.framework/Versions/A/Headers
	mkdir -p $(SDTDIR)/SDT.framework/Versions/A/Resources/fftw3
	cp -a $(FFTW3DIR)/* $(SDTDIR)/SDT.framework/Resources/fftw3
	install_name_tool -id @loader_path/Resources/fftw3/libfftw3.3.dylib \
	$(SDTDIR)/SDT.framework/Resources/fftw3/libfftw3.3.dylib
	cp -a $(SDTDIR)/*.h $(SDTDIR)/SDT.framework/Headers
	$(CC) $(LDFLAGS) -L$(SDTDIR)/SDT.framework/Resources/fftw3 $(SDTOBJS) \
	-o $(SDTDIR)/SDT.framework/Versions/A/SDT -framework System -lfftw3
	install_name_tool -id @loader_path/../../../../support/SDT.framework/SDT \
	$(SDTDIR)/SDT.framework/SDT
	
$(SDTDIR)/%.o: $(SDTDIR)/%.c
	$(CC) $(CFLAGS) -I$(FFTW3DIR) -c $< -o $@

install:
	mkdir -p $(DSTDIR)/{externals,extras,help,init,misc,patchers,support}
	cp -a ../../legacy/Max6/* $(DSTDIR)
	cp -a ../../Max6/* $(DSTDIR)
	cp -a $(SDTDIR)/SDT.framework $(DSTDIR)/support
	cp -a $(MAXDIR)/*.mxo $(DSTDIR)/externals

uninstall:
	rm -rf $(DSTDIR)

clean:
	rm -rf $(SDTDIR)/*.framework
	rm -rf $(SDTDIR)/*.o
	rm -rf $(MAXDIR)/*.mxo
	rm -rf $(MAXDIR)/*.o
