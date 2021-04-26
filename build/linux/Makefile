SHELL=/bin/bash

CC=gcc
CFLAGS=-fPIC -Wall -Wno-unknown-pragmas -Werror -O3
LDFLAGS=-shared
ROOT=../..
SRCDIR=$(ROOT)/src
THIRDPDIR=$(ROOT)/3rdparty
DSTDIR=/usr
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

all: sdt pd

.PHONY: sdt pd oscdoc_%

oscdoc_%: $(OSCDOCRST)
	cd $(OSCDOCDIR) && make $(@:oscdoc_%=%)

$(OSCDOCRST): $(OSCDOCGEN)
	$< > $@

$(OSCDOCGEN): $(OSCDOCGEN).c
	$(CC) $(CFLAGS) -I$(SRCDIR) $(INCLUDE_SDT) $(INCLUDE_JSON) $< -o $@

pd: sdt $(PDOBJS)
	$(CC) $(LDFLAGS) -L$(SDTDIR) $(PDOBJS) $(INCLUDE_JSON) -o $(PDDIR)/SDT.pd_linux -lc -lm -lSDT

$(PDDIR)/%.o: $(PDDIR)/%.c
	$(CC) $(CFLAGS) -I$(SRCDIR) $(INCLUDE_JSON) -c $< -o $@

sdt: $(SDTOBJS) json
	$(CC) $(LDFLAGS) $(SDTOBJS) $(JSONOBJS) $(INCLUDE_JSON) -o $(SDTDIR)/libSDT.so -lc -lm

$(SDTDIR)/%.o: $(SDTDIR)/%.c
	$(CC) $(CFLAGS) $(INCLUDE_JSON) -c $< -o $@

json: $(JSONOBJP) $(JSONOBJB)

$(JSONDIRP)/%.o: $(JSONDIRP)/%.c
	$(CC) $(CFLAGS) $(INCLUDE_JSON) -c $< -o $@

$(JSONDIRB)/%.o: $(JSONDIRB)/%.c
	$(CC) $(CFLAGS) $(INCLUDE_JSON) -c $< -o $@

install_core:
	mkdir -p $(DSTDIR)/include/$(SDTPATH)
	mkdir -p $(DSTDIR)/lib
	cp -a $(SDTDIR)/libSDT.so $(DSTDIR)/lib
	cp -a $(SDTDIR)/*.h $(DSTDIR)/include/$(SDTPATH)
	cp -a $(JSONDIRP)/*.h $(DSTDIR)/include/$(SDTPATH)
	cp -a $(JSONDIRB)/*.h $(DSTDIR)/include/$(SDTPATH)

install_pd: install_core
	mkdir -p $(DSTDIR)/lib/pd/extra/$(SDTPATH)
	cp -a $(PDDIR)/*.pd_linux $(DSTDIR)/lib/pd/extra/$(SDTPATH)
	cp -a ../../Pd/* $(DSTDIR)/lib/pd/extra/$(SDTPATH)

uninstall:
	rm -f $(DSTDIR)/lib/libSDT.so
	rm -rf $(DSTDIR)/lib/pd/extra/$(SDTPATH)
	rm -rf $(DSTDIR)/include/$(SDTPATH)

clean:
	rm -rf $(SDTDIR)/*.so
	rm -rf $(SDTDIR)/*.o
	rm -rf $(PDDIR)/*.pd_linux
	rm -rf $(PDDIR)/*.o
	rm -rf $(JSONDIRP)/*.o
	rm -rf $(JSONDIRB)/*.o
