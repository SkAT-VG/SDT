SHELL=/bin/bash

CC=gcc
CFLAGS=-fPIC -Wall -Wno-unknown-pragmas -Werror -O3
LDFLAGS=-shared
SRCDIR=../../src
THIRDPDIR=../../3rdparty
PREFIX=/usr
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

INCLUDE_JSON=-I$(JSONDIRP) -I$(JSONDIRB)
JSONOBJS=$(JSONOBJP) $(JSONOBJB)

all: sdt pd

pd: sdt $(PDOBJS)
	$(CC) $(LDFLAGS) -L$(SDTDIR) $(PDOBJS) -o $(PDDIR)/SDT.pd_linux -lc -lm -lSDT

$(PDDIR)/%.o: $(PDDIR)/%.c
	$(CC) $(CFLAGS) -I$(SRCDIR) -c $< -o $@

sdt: $(SDTOBJS) json
	$(CC) $(LDFLAGS) $(SDTOBJS) $(JSONOBJS) -o $(SDTDIR)/libSDT.so -lc -lm

$(SDTDIR)/%.o: $(SDTDIR)/%.c
	$(CC) $(CFLAGS) $(INCLUDE_JSON) -c $< -o $@

json: $(JSONOBJP) $(JSONOBJB)

$(JSONDIRP)/%.o: $(JSONDIRP)/%.c
	$(CC) $(CFLAGS) $(INCLUDE_JSON) -c $< -o $@

$(JSONDIRB)/%.o: $(JSONDIRB)/%.c
	$(CC) $(CFLAGS) $(INCLUDE_JSON) -c $< -o $@

	
install:
	mkdir -p $(PREFIX)/lib/pd/extra/$(SDTPATH)
	mkdir -p $(PREFIX)/include/$(SDTPATH)
	cp -a $(SDTDIR)/libSDT.so $(PREFIX)/lib
	cp -a $(PDDIR)/*.pd_linux $(PREFIX)/lib/pd/extra/$(SDTPATH)
	cp -a ../../Pd/* $(PREFIX)/lib/pd/extra/$(SDTPATH)
	cp -a $(SDTDIR)/*.h $(PREFIX)/include/$(SDTPATH)
	cp -a $(JSONDIRP)/*.h $(PREFIX)/include/$(SDTPATH)
	cp -a $(JSONDIRB)/*.h $(PREFIX)/include/$(SDTPATH)

uninstall:
	rm -f $(PREFIX)/lib/libSDT.so
	rm -rf $(PREFIX)/lib/pd/extra/$(SDTPATH)
	rm -rf $(PREFIX)/include/$(SDTPATH)

clean:
	rm -rf $(SDTDIR)/*.so
	rm -rf $(SDTDIR)/*.o
	rm -rf $(PDDIR)/*.pd_linux
	rm -rf $(PDDIR)/*.o
	rm -rf $(JSONDIRP)/*.o
	rm -rf $(JSONDIRB)/*.o
