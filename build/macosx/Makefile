SHELL=/bin/bash

CC=clang
MACARCH=-arch i386 -arch x86_64
MACVERSION=-isysroot ../../3rdparty/MacOSX10.6.sdk -mmacosx-version-min=10.6
CFLAGS=$(MACARCH) $(MACVERSION) -Wall -Wno-unknown-pragmas -Werror -g -O3
LDFLAGS=$(MACARCH) $(MACVERSION) -dynamiclib -headerpad_max_install_names
SRCDIR=../../src
THIRDPDIR=../../3rdparty

SDTDIR=$(SRCDIR)/SDT
SDTSRCS=$(wildcard $(SDTDIR)/*.c)
SDTOBJS=$(patsubst %.c,%.o,$(SDTSRCS))

MAXDIR=$(SRCDIR)/Max7
MAXSRCS = $(wildcard $(MAXDIR)/*.c)
MAXOBJS = $(patsubst %.c,%.mxo,$(MAXSRCS))

MAXSDKDIR=$(THIRDPDIR)/Max7SDK
MAXSDKVERSION=6.1.4

PDDIR=$(SRCDIR)/Pd
PDSRCS=$(wildcard $(PDDIR)/*.c)
PDOBJS=$(patsubst %.c,%.o,$(PDSRCS))

PDSDKDIR=$(THIRDPDIR)/Pd
PDVERSION=0.41.4

JSONDIRB=$(THIRDPDIR)/json-builder
JSONSRCB=$(wildcard $(JSONDIRB)/*.c)
JSONOBJB=$(patsubst %.c,%.o,$(JSONSRCB))

JSONDIRP=$(THIRDPDIR)/json-parser
JSONSRCP=$(wildcard $(JSONDIRP)/*.c)
JSONOBJP=$(patsubst %.c,%.o,$(JSONSRCP))

INCLUDE_JSON=-I$(JSONDIRP) -I$(JSONDIRB)
JSONOBJS=$(JSONOBJP) $(JSONOBJB)

all: core max pd

max: core fileusage $(MAXOBJS)

$(MAXDIR)/%.mxo: EXTNAME=$(patsubst $(MAXDIR)/%.mxo,%,$@)
$(MAXDIR)/%.mxo: RFC1034=$(patsubst %~,%-,$(EXTNAME))
$(MAXDIR)/%.mxo: $(MAXDIR)/%.o
	rm -rf $@
	cp -a Max7External.mxo $@
	mkdir -p $@/Contents/MacOS
	sed -i "" s/\$${PRODUCT_NAME}/$(EXTNAME)/g $@/Contents/Info.plist
	sed -i "" s/\$${PRODUCT_NAME:rfc1034identifier}/$(RFC1034)/g $@/Contents/Info.plist
	sed -i "" s/\$${PRODUCT_VERSION}/$(MAXSDKVERSION)/g $@/Contents/Info.plist
	$(CC) $(LDFLAGS) @$(MAXSDKDIR)/max-includes/c74_linker_flags.txt \
	-L$(MAXSDKDIR)/max-includes -L$(MAXSDKDIR)/msp-includes -L$(MAXSDKDIR)/jit-includes \
	-F$(MAXSDKDIR)/max-includes -F$(MAXSDKDIR)/msp-includes -F$(MAXSDKDIR)/jit-includes \
	-F$(SDTDIR) -framework SDT -framework MaxAudioAPI $< $(MAXDIR)/SDT_fileusage.o -o $@/Contents/MacOS/$(EXTNAME)
	install_name_tool -id @rpath/$(EXTNAME) $@/Contents/MacOS/$(EXTNAME)
	install_name_tool -add_rpath @loader_path/../../../../support/SDT.framework $@/Contents/MacOS/$(EXTNAME)
	install_name_tool -add_rpath @executable_path/../Resources/C74/packages/SDT/support/SDT.framework $@/Contents/MacOS/$(EXTNAME)

$(MAXDIR)/%.o: $(MAXDIR)/%.c
	$(CC) $(CFLAGS) -DDENORM_WANT_FIX=1 -DNO_TRANSLATION_SUPPORT=1 -DC74_NO_DEPRECATION \
	-DMAC_VERSION -DMAC_EXT_VERSION -Dpowerc -fvisibility=hidden \
	$(INCLUDE_JSON) \
	-I$(MAXSDKDIR)/max-includes -I$(MAXSDKDIR)/msp-includes -I$(MAXSDKDIR)/jit-includes \
	-F$(MAXSDKDIR)/max-includes -F$(MAXSDKDIR)/msp-includes -F$(MAXSDKDIR)/jit-includes \
	-F$(SDTDIR) -include $(MAXSDKDIR)/max-includes/macho-prefix.pch -c $< -o $@

pd: $(SDTOBJS) $(PDOBJS)
	$(CC) $(LDFLAGS) -undefined dynamic_lookup $(SDTOBJS) $(PDOBJS) -o $(PDDIR)/SDT.pd_darwin

$(PDDIR)/%.o: $(PDDIR)/%.c
	$(CC) $(CFLAGS) -I$(SRCDIR) -I$(PDSDKDIR) $(INCLUDE_JSON) -F$(SDTDIR) -c $< -o $@

fileusage:
	$(CC) $(CFLAGS) -DDENORM_WANT_FIX=1 -DNO_TRANSLATION_SUPPORT=1 -DC74_NO_DEPRECATION \
	-DMAC_VERSION -DMAC_EXT_VERSION -Dpowerc -fvisibility=hidden \
	-I$(MAXSDKDIR)/max-includes -I$(MAXSDKDIR)/msp-includes -I$(MAXSDKDIR)/jit-includes \
	-F$(MAXSDKDIR)/max-includes -F$(MAXSDKDIR)/msp-includes -F$(MAXSDKDIR)/jit-includes \
	-F$(SDTDIR) -include $(MAXSDKDIR)/max-includes/macho-prefix.pch \
	-c $(MAXDIR)/SDT_fileusage/SDT_fileusage.c -o $(MAXDIR)/SDT_fileusage.o

core: $(SDTOBJS) json
	rm -rf $(SDTDIR)/SDT.framework
	cp -a SDT.framework $(SDTDIR)
	mkdir -p $(SDTDIR)/SDT.framework/Versions/A/Headers
	cp -a $(SDTDIR)/*.h $(SDTDIR)/SDT.framework/Headers
	cp -a $(JSONDIRP)/*.h $(SDTDIR)/SDT.framework/Headers
	cp -a $(JSONDIRB)/*.h $(SDTDIR)/SDT.framework/Headers
	$(CC) $(LDFLAGS) $(SDTOBJS) $(JSONOBJS) -o $(SDTDIR)/SDT.framework/Versions/A/SDT -framework System
	install_name_tool -id @rpath/SDT $(SDTDIR)/SDT.framework/SDT

$(SDTDIR)/%.o: $(SDTDIR)/%.c
	$(CC) $(CFLAGS) $(INCLUDE_JSON) -c $< -o $@

json: $(JSONOBJP) $(JSONOBJB)

$(JSONDIRP)/%.o: $(JSONDIRP)/%.c
	$(CC) $(CFLAGS) $(INCLUDE_JSON) -c $< -o $@

$(JSONDIRB)/%.o: $(JSONDIRB)/%.c
	$(CC) $(CFLAGS) $(INCLUDE_JSON) -c $< -o $@

install_max:
	@if [ -z "$(DSTDIR)" ]; \
	then echo "Usage: make install_max DSTDIR=<installation_path>"; \
	elif [ ! -d "$(DSTDIR)" ]; \
	then echo "Error: installation path does not exist or is not a directory"; \
	else mkdir -p "$(DSTDIR)"/SDT/{externals,support} && \
	     cp -a ../../Max7/* "$(DSTDIR)"/SDT && \
	     cp -a $(SDTDIR)/SDT.framework "$(DSTDIR)"/SDT/support && \
	     cp -a $(MAXDIR)/*.mxo "$(DSTDIR)"/SDT/externals && \
	     echo "Sound Design Toolkit installed in $(DSTDIR)"; \
	fi
	
install_pd:
	@if [ -z "$(DSTDIR)" ]; \
        then echo "Usage: make install_pd DSTDIR=<installation_path>"; \
        elif [ ! -d "$(DSTDIR)" ]; \
        then echo "Error: installation path does not exist or is not a directory"; \
	else mkdir -p "$(DSTDIR)"/SDT && \
	     cp -a ../../Pd/* "$(DSTDIR)"/SDT && \
	     cp -a $(PDDIR)/*.pd_darwin "$(DSTDIR)"/SDT && \
	     echo "Sound Design Toolkit for PureData installed in $(DSTDIR)"; \
	fi

install_core:
	@if [ -z "$(DSTDIR)" ]; \
		then echo "Usage: make install_core DSTDIR=<installation_path>"; \
		elif [ ! -d "$(DSTDIR)" ]; \
		then echo "Error: installation path does not exist or is not a directory"; \
	else mkdir -p "$(DSTDIR)"/SDT && \
		cp -a $(SDTDIR)/SDT.framework "$(DSTDIR)"/SDT && \
		echo "Sound Design Toolkit core library installed in $(DSTDIR)"; \
	fi	

clean:
	rm -rf $(SDTDIR)/*.framework
	rm -rf $(SDTDIR)/*.o
	rm -rf $(MAXDIR)/*.mxo
	rm -rf $(MAXDIR)/*.o
	rm -rf $(PDDIR)/*.pd_darwin
	rm -rf $(PDDIR)/*.o
	rm -rf $(JSONDIRP)/*.o
	rm -rf $(JSONDIRB)/*.o
