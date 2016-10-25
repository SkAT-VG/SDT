SHELL=/bin/bash

CC=gcc
CFLAGS=-fPIC -Wall -Wno-unknown-pragmas -Werror
LDFLAGS=-shared
SRCDIR=../../src
PREFIX=/usr/lib
SDTPATH=SDT

SDTDIR=$(SRCDIR)/SDT
SDTSRCS=$(wildcard $(SDTDIR)/*.c)
SDTOBJS=$(patsubst %.c,%.o,$(SDTSRCS))

PDDIR=$(SRCDIR)/Pd
PDSRCS=$(wildcard $(PDDIR)/*.c)
PDOBJS=$(patsubst %.c,%.o,$(PDSRCS))

all: sdt pd

pd: sdt $(PDOBJS)
	$(CC) $(LDFLAGS) -L$(SDTDIR) $(PDOBJS) -o $(PDDIR)/SDT.pd_linux -lc -lm -lSDT

$(PDDIR)/%.o: $(PDDIR)/%.c
	$(CC) $(CFLAGS) -I$(SRCDIR) -c $< -o $@

sdt: $(SDTOBJS)
	$(CC) $(LDFLAGS) $(SDTOBJS) -o $(SDTDIR)/libSDT.so -lc -lm

$(SDTDIR)/%.o: $(SDTDIR)/%.c
	$(CC) $(CFLAGS) -c $< -o $@
	
install:
	mkdir -p $(PREFIX)/pd/extra/$(SDTPATH)
	cp -a $(SDTDIR)/libSDT.so $(PREFIX)
	cp -a $(PDDIR)/*.pd_linux $(PREFIX)/pd/extra/$(SDTPATH)
	cp -a ../../Pd/* $(PREFIX)/pd/extra/$(SDTPATH)

uninstall:
	rm -f $(PREFIX)/libSDT.so
	rm -rf $(PREFIX)/pd/extra/$(SDTPATH)

clean:
	rm -rf $(SDTDIR)/*.so
	rm -rf $(SDTDIR)/*.o
	rm -rf $(PDDIR)/*.pd_linux
	rm -rf $(PDDIR)/*.o
