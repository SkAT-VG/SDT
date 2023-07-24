SHELL=/bin/bash

CC=x86_64-w64-mingw32-gcc
CFLAGS=-Wall -Wno-unknown-pragmas -Werror -O3
LDFLAGS=-shared
SRCDIR=../../src
THIRDPDIR=../../3rdparty
# DSTDIR=../../SoundDesignToolkit

SDTDIR=$(SRCDIR)/SDT
SDTSRCS=$(wildcard $(SDTDIR)/*.c)
SDTOBJS=$(patsubst %.c,%.o,$(SDTSRCS))

MAXDIR=$(SRCDIR)/Max
MAXSRCS=$(wildcard $(MAXDIR)/*.c)
MAXOBJS=$(patsubst %.c,%.mxe64,$(MAXSRCS))

MAXSDKDIR=$(THIRDPDIR)/Max8SDK
# from https://github.com/Cycling74/max-sdk-base 2023/07/25

MAXPACKDIR=../../MaxPackage

JSONDIRB=$(THIRDPDIR)/json-builder
JSONSRCB=$(wildcard $(JSONDIRB)/*.c)
JSONOBJB=$(patsubst %.c,%.o,$(JSONSRCB))

JSONDIRP=$(THIRDPDIR)/json-parser
JSONSRCP=$(wildcard $(JSONDIRP)/*.c)
JSONOBJP=$(patsubst %.c,%.o,$(JSONSRCP))

INCLUDE_JSON=-I$(JSONDIRP) -I$(JSONDIRB)
JSONOBJS=$(JSONOBJP) $(JSONOBJB)

all: core max

max: core fileusage $(MAXOBJS)

$(MAXDIR)/%.mxe64: EXTNAME=$(patsubst $(MAXDIR)/%.mxe64,%,$@)
$(MAXDIR)/%.mxe64: $(MAXDIR)/%.o
	cp Info.def $(MAXDIR)/$(EXTNAME).def
	sed -i $(MAXDIR)/$(EXTNAME).def -e s/\$${PRODUCT_NAME}/$(EXTNAME)/g
	$(CC) $(LDFLAGS) -L$(MAXSDKDIR)/max-includes/x64 -L$(MAXSDKDIR)/msp-includes/x64 -L$(MAXSDKDIR)/jit-includes/x64 -L$(SDTDIR) \
	$< $(MAXDIR)/$(EXTNAME).def -o $@ $(MAXDIR)/SDT_fileusage.o -lMaxAPI -lMaxAudio -lSDT64

$(MAXDIR)/%.o: $(MAXDIR)/%.c
	$(CC) $(CFLAGS) -DDENORM_WANT_FIX=1 -DNO_TRANSLATION_SUPPORT=1 -DC74_NO_DEPRECATION \
	-DWIN_VERSION -DWIN_EXT_VERSION -fvisibility=hidden \
	$(INCLUDE_JSON) \
	-I$(MAXSDKDIR)/max-includes -I$(MAXSDKDIR)/msp-includes -I$(MAXSDKDIR)/jit-includes \
	-I$(SRCDIR) -c $< -o $@

fileusage:
	$(CC) $(CFLAGS) -DDENORM_WANT_FIX=1 -DNO_TRANSLATION_SUPPORT=1 -DC74_NO_DEPRECATION \
	-DWIN_VERSION -DWIN_EXT_VERSION -fvisibility=hidden \
	-I$(MAXSDKDIR)/max-includes -I$(MAXSDKDIR)/msp-includes -I$(MAXSDKDIR)/jit-includes \
	-I$(SRCDIR) -c $(MAXDIR)/SDT_fileusage/SDT_fileusage.c -o $(MAXDIR)/SDT_fileusage.o

core: $(SDTOBJS) json
	$(CC) $(LDFLAGS) $(SDTOBJS) $(JSONOBJS) -o $(SDTDIR)/libSDT64.dll

$(SDTDIR)/%.o: $(SDTDIR)/%.c
	$(CC) $(CFLAGS) $(INCLUDE_JSON) -c $< -o $@

json: $(JSONOBJP) $(JSONOBJB)

$(JSONDIRP)/%.o: $(JSONDIRP)/%.c
	$(CC) $(CFLAGS) $(INCLUDE_JSON) -c $< -o $@

$(JSONDIRB)/%.o: $(JSONDIRB)/%.c
	$(CC) $(CFLAGS) $(INCLUDE_JSON) -c $< -o $@

install_max:
	@if [ -z "$(DSTDIR)" ]; then \
		echo "Usage: make install_max DSTDIR=<installation_path>"; \
	elif [ ! -d "$(DSTDIR)" ]; then \
		echo "Error: installation path does not exist or is not a directory"; \
	else \
		mkdir -p "${DSTDIR}/Sound Design Toolkit/"{externals,support} && \
		cp -a $(MAXPACKDIR)/* "${DSTDIR}/Sound Design Toolkit/" && \
		cp -a $(SDTDIR)/libSDT64.dll "${DSTDIR}/Sound Design Toolkit/support" && \
		cp -a $(MAXDIR)/*.mxe64 "${DSTDIR}/Sound Design Toolkit/externals" && \
		echo "Sound Design Toolkit package for Max installed in '${DSTDIR}/Sound Design Toolkit'"; \
	fi

uninstall_max:
	@if [ -z "$(DSTDIR)" ]; then \
		echo "Usage: make uninstall_max DSTDIR=<installation_path>"; \
	elif [ ! -d "$(DSTDIR)" ]; then \
		echo "Error: installation path does not exist or is not a directory"; \
	else \
		rm -rf "${DSTDIR}/Sound Design Toolkit/" && \
		echo "Sound Design Toolkit package for Max removed from '${DSTDIR}/Sound Design Toolkit'"; \
	fi

install_core:
	@if [ -z "$(DSTDIR)" ]; then \
		echo "Usage: make install_core DSTDIR=<installation_path>"; \
	elif [ ! -d "$(DSTDIR)" ]; then \
		echo "Error: installation path does not exist or is not a directory"; \
	else \
		mkdir -p "$(DSTDIR)"/include/SDT && \
		mkdir -p "$(DSTDIR)"/lib && \
		cp -a $(SDTDIR)/libSDT64.dll "$(DSTDIR)"/lib && \
		cp -a $(SDTDIR)/*.h $(DSTDIR)/include/SDT && \
		cp -a $(JSONDIRP)/*.h $(DSTDIR)/include/SDT && \
		cp -a $(JSONDIRB)/*.h $(DSTDIR)/include/SDT && \
		echo "Sound Design Toolkit 'Core Library' installed in '$(DSTDIR)'"; \
	fi

uninstall_core:
	@if [ -z "$(DSTDIR)" ]; then \
		echo "Usage: make uninstall_core DSTDIR=<installation_path>"; \
	elif [ ! -d "$(DSTDIR)" ]; then \
		echo "Error: installation path does not exist or is not a directory"; \
	else \
		rm -rf "$(DSTDIR)"/include/SDT && \
		rm -f "$(DSTDIR)"/lib/libSDT64.dll && \
		echo "Sound Design Toolkit 'Core Library' removed from '$(DSTDIR)/SDT'"; \
	fi

clean:
	rm -rf $(SDTDIR)/libSDT64.dll
	rm -rf $(SDTDIR)/*.o
	rm -rf $(MAXDIR)/*.mxe64
	rm -rf $(MAXDIR)/*.def
	rm -rf $(MAXDIR)/*.o
	rm -rf $(JSONDIRP)/*.o
	rm -rf $(JSONDIRB)/*.o
