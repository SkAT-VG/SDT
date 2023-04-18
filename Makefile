# --- Paths -------------------------------------------------------------------
ROOT=.
SRCDIR=$(ROOT)/src
THIRDPDIR=$(ROOT)/3rdparty
BUILDDIR=builds

JSONDIRP=$(THIRDPDIR)/json-parser
JSONDIRB=$(THIRDPDIR)/json-builder
SDTDIR=$(SRCDIR)/SDT
PDDIR=$(SRCDIR)/Pd
PDPATCHDIR=$(ROOT)/Pd

# Generate build destination path
define get_build_dest
	$(patsubst $(ROOT)/%,$(BUILDDIR)/%,$(1))
endef

# Find source files in directory
define get_sources
	$(wildcard $(1)/*.c)
endef

# Generate build destination paths for source files in directory
define get_objects
	$(call get_build_dest,$(patsubst %.c,%.o,$(call get_sources,$(1))))
endef

# Find header files in directory
define get_heads
	$(wildcard $(1)/*.h)
endef
# -----------------------------------------------------------------------------

# --- Compiler ----------------------------------------------------------------
CC=gcc
CFLAGS=-fPIC -O3 -Wall -Wno-unknown-pragmas -Werror
# -----------------------------------------------------------------------------

.PHONY: all clean \
				core install_core uninstall_core \
				pd install_core uninstall_core

all: core pd

# --- Clean build -------------------------------------------------------------
clean:
	$(info Deleting build directory)
	rm -rf $(BUILDDIR)
# -----------------------------------------------------------------------------

# --- JSON --------------------------------------------------------------------
INCLUDE_JSON=-I$(JSONDIRP) -I$(JSONDIRB)

$(call get_build_dest,$(JSONDIRP)):
	mkdir -p $@

$(call get_build_dest,$(JSONDIRP))/%.o: $(JSONDIRP)/%.c | $(call get_build_dest,$(JSONDIRP))
	$(CC) $(CFLAGS) -c $< -o $@

$(call get_build_dest,$(JSONDIRB)):
	mkdir -p $@

$(call get_build_dest,$(JSONDIRB))/%.o: $(JSONDIRB)/%.c | $(call get_build_dest,$(JSONDIRB))
	$(CC) $(CFLAGS) -c $(INCLUDE_JSON) $< -o $@
# -----------------------------------------------------------------------------

# --- Core library ------------------------------------------------------------
INCLUDE_SDT=-I$(SRCDIR)
CORE_FNAME=libSDT.so

core: $(BUILDDIR)/$(CORE_FNAME)
	$(info Core library built: $<)

$(BUILDDIR)/$(CORE_FNAME): $(call get_objects,$(SDTDIR)) $(call get_objects,$(JSONDIRP)) $(call get_objects,$(JSONDIRB))
	$(CC) -shared -lc -lm -o $@ $^

$(call get_build_dest,$(SDTDIR)):
	mkdir -p $@

$(call get_build_dest,$(SDTDIR))/%.o: $(SDTDIR)/%.c | $(call get_build_dest,$(SDTDIR))
	$(CC) $(CFLAGS) -c $(INCLUDE_JSON) $< -o $@
# -----------------------------------------------------------------------------

# --- Pd ----------------------------------------------------------------------
INCLUDE_PD_SDK=-I$(THIRDPDIR)/Pd
PD_FNAME=SDT.pd_linux

pd: $(BUILDDIR)/$(PD_FNAME)
	$(info Pd library built: $<)

$(BUILDDIR)/$(PD_FNAME): $(call get_objects,$(PDDIR)) $(call get_objects,$(SDTDIR)) $(call get_objects,$(JSONDIRP)) $(call get_objects,$(JSONDIRB))
	$(CC) -shared -lc -lm -o $@ $^

$(call get_build_dest,$(PDDIR)):
	mkdir -p $@

$(call get_build_dest,$(PDDIR))/%.o: $(PDDIR)/%.c | $(call get_build_dest,$(PDDIR))
	$(CC) $(CFLAGS) -c $(INCLUDE_JSON) $(INCLUDE_SDT) $(INCLUDE_PD_SDK) $< -o $@
# -----------------------------------------------------------------------------

# --- Un/Installers -----------------------------------------------------------
DEFAULT_CORE_DSTDIR=/usr
DEFAULT_PD_DSTDIR=/usr/lib/pd/extra
SDTDSTDIR=SDT

# Set default DSTDIR if not provided by user
get_dstdir = $($(eval DSTDIR ?= $(1)))
# Check that DSTDIR is not an empty string
check_dst_string = $(if $(DSTDIR),,\
                     $(error Usage: make $@ DSTDIR=<installation_path>))
# Check that DSTDIR exists and is a directory
check_dst_exists = $(if $(wildcard $(DSTDIR)/.),,\
                     $(error Installation path does not exist or is not \
										         a directory: $(DSTDIR)))

install_core:
	$(call get_dstdir, $(DEFAULT_CORE_DSTDIR))
	$(call check_dst_string)
	$(call check_dst_exists)
	mkdir -p $(DSTDIR)/include/$(SDTDSTDIR)
	mkdir -p $(DSTDIR)/lib
	cp -a $(BUILDDIR)/$(CORE_FNAME) $(DSTDIR)/lib
	cp -a $(SDTDIR)/*.h $(DSTDIR)/include/$(SDTDSTDIR)
	cp -a $(JSONDIRP)/*.h $(DSTDIR)/include/$(SDTDSTDIR)
	cp -a $(JSONDIRB)/*.h $(DSTDIR)/include/$(SDTDSTDIR)
	$(info Sound Design Toolkit 'Core Library' installed in '$(DSTDIR)')

uninstall_core:
	$(call get_dstdir, $(DEFAULT_CORE_DSTDIR))
	$(call check_dst_string)
	$(call check_dst_exists)
	rm -rf $(DSTDIR)/include/$(SDTDSTDIR)
	rm -f $(DSTDIR)/lib/$(CORE_FNAME)
	$(info Sound Design Toolkit 'Core Library' removed from '$(DSTDIR)')

install_pd:
	$(call get_dstdir, $(DEFAULT_PD_DSTDIR))
	$(call check_dst_string)
	$(call check_dst_exists)
	mkdir -p $(DSTDIR)/$(SDTDSTDIR)
	cp -a $(PDPATCHDIR)/* $(DSTDIR)/$(SDTDSTDIR)
	cp -a $(BUILDDIR)/$(PD_FNAME) $(DSTDIR)/$(SDTDSTDIR)
	$(info Sound Design Toolkit for PureData \
			installed in '$(DSTDIR)/$(SDTDSTDIR)')

uninstall_pd:
	$(call get_dstdir, $(DEFAULT_PD_DSTDIR))
	$(call check_dst_string)
	$(call check_dst_exists)
	rm -rf $(DSTDIR)/$(SDTDSTDIR)
	$(info Sound Design Toolkit for PureData \
	       removed from '$(DSTDIR)/$(SDTDSTDIR)')
# -----------------------------------------------------------------------------
