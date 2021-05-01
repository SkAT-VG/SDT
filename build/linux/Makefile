SHELL=/bin/bash

CC=gcc
CFLAGS=-fPIC -Wall -Wno-unknown-pragmas -Werror -O3
LDFLAGS=-shared
ROOT=../..
SRCDIR=$(ROOT)/src
THIRDPDIR=$(ROOT)/3rdparty
# DSTDIR=/usr
SDTPATH=SDT

SDTDIR=$(SRCDIR)/SDT
SDTSRCS=$(wildcard $(SDTDIR)/*.c)
SDTOBJS=$(patsubst %.c,%.o,$(SDTSRCS))

PDDIR=$(SRCDIR)/Pd
PDSRCS=$(wildcard $(PDDIR)/*.c)
PDOBJS=$(patsubst %.c,%.o,$(PDSRCS))

JSONDIRB=$(THIRDPDIR)/json-builder
JSONSRCB=$(wildcard $(JSONDIRB)/*.c)
JSONOBJB=$(patsubst %.c,%.o,$(JSONSRCB))

JSONDIRP=$(THIRDPDIR)/json-parser
JSONSRCP=$(wildcard $(JSONDIRP)/*.c)
JSONOBJP=$(patsubst %.c,%.o,$(JSONSRCP))
JSONOBJS=$(JSONOBJP) $(JSONOBJB)

OSCDOCDIR=$(ROOT)/oscdoc
OSCDOCGEN=$(OSCDOCDIR)/docgen
OSCDOCSOURCEDIR=$(OSCDOCDIR)/source
OSCDOCRST=$(OSCDOCSOURCEDIR)/ordinary_classes.rst

INCLUDE_JSON=-I$(JSONDIRP) -I$(JSONDIRB)
INCLUDE_SDT=-I$(SDTDIR)

all: core pd

.PHONY: core pd oscdoc_%

oscdoc_%: $(OSCDOCRST)
	cd $(OSCDOCDIR) && make $(@:oscdoc_%=%)

$(OSCDOCRST): $(OSCDOCGEN)
	$< > $@

$(OSCDOCGEN): $(OSCDOCGEN).c
	$(CC) $(CFLAGS) -I$(SRCDIR) $(INCLUDE_SDT) $(INCLUDE_JSON) $< -o $@

pd: core $(PDOBJS)
	$(CC) $(LDFLAGS) $(JSONOBJS) $(SDTOBJS) $(PDOBJS) -o $(PDDIR)/SDT.pd_linux

$(PDDIR)/%.o: $(PDDIR)/%.c
	$(CC) $(CFLAGS) -I$(SRCDIR) $(INCLUDE_JSON) -c $< -o $@

core: $(SDTOBJS) json
	$(CC) $(LDFLAGS) $(SDTOBJS) $(JSONOBJS) $(INCLUDE_JSON) -o $(SDTDIR)/libSDT.so -lc -lm

$(SDTDIR)/%.o: $(SDTDIR)/%.c
	$(CC) $(CFLAGS) $(INCLUDE_JSON) -c $< -o $@

json: $(JSONOBJP) $(JSONOBJB)

$(JSONDIRP)/%.o: $(JSONDIRP)/%.c
	$(CC) $(CFLAGS) $(INCLUDE_JSON) -c $< -o $@

$(JSONDIRB)/%.o: $(JSONDIRB)/%.c
	$(CC) $(CFLAGS) $(INCLUDE_JSON) -c $< -o $@

install_core:
	$(eval DSTDIR ?= "/usr")
	@if [ -z "$(DSTDIR)" ]; then \
		echo "Usage: make install_core DSTDIR=<installation_path>"; \
	elif [ ! -d "$(DSTDIR)" ]; then \
		echo "Error: installation path does not exist or is not a directory"; \
	else \
		mkdir -p $(DSTDIR)/include/$(SDTPATH) && \
		mkdir -p $(DSTDIR)/lib && \
		cp -a $(SDTDIR)/libSDT.so $(DSTDIR)/lib && \
		cp -a $(SDTDIR)/*.h $(DSTDIR)/include/$(SDTPATH) && \
		cp -a $(JSONDIRP)/*.h $(DSTDIR)/include/$(SDTPATH) && \
		cp -a $(JSONDIRB)/*.h $(DSTDIR)/include/$(SDTPATH) && \
		echo "Sound Design Toolkit 'Core Library' installed in '${DSTDIR}'"; \
  fi

uninstall_core:
	$(eval DSTDIR ?= "/usr")
	@if [ -z "$(DSTDIR)" ]; then \
		echo "Usage: make uninstall_core DSTDIR=<installation_path>"; \
	elif [ ! -d "$(DSTDIR)" ]; then \
		echo "Error: installation path does not exist or is not a directory"; \
	else \
		rm -rf "$(DSTDIR)/include/$(SDTPATH)" && \
		rm -f "$(DSTDIR)/lib/libSDT.so" && \
		echo "Sound Design Toolkit 'Core Library' removed from '${DSTDIR}'"; \
  fi

install_pd:
	$(eval DSTDIR ?= "/usr/lib/pd/extra")
	@if [ -z "$(DSTDIR)" ]; then \
		echo "Usage: make install_pd DSTDIR=<installation_path>"; \
	elif [ ! -d "$(DSTDIR)" ]; then \
		echo "Error: installation path does not exist or is not a directory"; \
	else \
		mkdir -p "${DSTDIR}/${SDTPATH}" && \
		cp -a ../../Pd/* "${DSTDIR}/${SDTPATH}" && \
		cp -a $(PDDIR)/*.pd_linux "${DSTDIR}/${SDTPATH}" && \
		echo "Sound Design Toolkit for PureData installed in '${DSTDIR}/${SDTPATH}'"; \
	fi

uninstall_pd:
	$(eval DSTDIR ?= "/usr/lib/pd/extra")
	@if [ -z "$(DSTDIR)" ]; then \
		echo "Usage: make uninstall_pd DSTDIR=<installation_path>"; \
	elif [ ! -d "$(DSTDIR)" ]; then \
		echo "Error: installation path does not exist or is not a directory"; \
	else \
		rm -rf "${DSTDIR}/${SDTPATH}" && \
		echo "Sound Design Toolkit for PureData removed from '${DSTDIR}/${SDTPATH}"; \
	fi

clean:
	rm -rf "$(SDTDIR)/"*.so
	rm -rf "$(SDTDIR)/"*.o
	rm -rf "$(PDDIR)/"*.pd_linux
	rm -rf "$(PDDIR)/"*.o
	rm -rf "$(JSONDIRP)/"*.o
	rm -rf "$(JSONDIRB)/"*.o
