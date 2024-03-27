# --- Paths -------------------------------------------------------------------
ROOT?=.
SRC_DIR=$(ROOT)/src
THIRDP_DIR=$(ROOT)/3rdparty
TEMPLATE_DIR=$(ROOT)/templates

# Generate build destination path
define get_build_dest
	$(patsubst $(ROOT)/%,$(BUILDDIR)/%,$(1))
endef

# Find source files in directory
#   default input extension is .c
define get_sources
	$(wildcard $(1)/*.$(if $(2),$(2),c))
endef

# Generate build destination paths for source files in directory
#   default output extension is .o
#   default input extension is .c
define get_objects
	$(call get_build_dest,\
			$(patsubst %.$(if $(3),$(3),c),%.$(if $(2),$(2),o),\
					$(call get_sources,$(1))))
endef
# -----------------------------------------------------------------------------

# --- Detect OS ---------------------------------------------------------------
# Based on: https://gist.github.com/sighingnow/deee806603ec9274fd47

AUTO_TARGET=
ifeq ($(OS),Windows_NT)
	AUTO_TARGET=win32
	ifeq ($(PROCESSOR_ARCHITECTURE),AMD64)
		AUTO_TARGET=win64
	endif
	ifeq ($(PROCESSOR_ARCHITECTURE),x86)
		AUTO_TARGET=win64
	endif
else
	UNAME_S := $(shell uname -s)
	ifeq ($(UNAME_S),Linux)
		AUTO_TARGET=linux
	endif
	ifeq ($(UNAME_S),Darwin)
		AUTO_TARGET=macosx
	endif
endif
TARGET?=$(AUTO_TARGET)
BUILDDIR?=.build.$(TARGET)

ALL=check_os core testrunner
PHONY=all test install_core uninstall_core \
			check_os_detected check_os_supported \
			core_version pd_version max_version full_version
NOTINTERMEDIATE=

ifeq ("$(TARGET)", "linux")
	ALL+= pd
	PHONY+= install_pd uninstall_pd
endif
ifeq ("$(TARGET)", "win32")
	ALL+= pd
	PHONY+= install_pd uninstall_pd
endif
ifeq ("$(TARGET)", "win64")
	ALL+= pd max
	PHONY+= install_max uninstall_max
endif
ifeq ("$(TARGET)", "macosx")
	ALL+= pd max
	PHONY+= install_pd uninstall_pd install_max uninstall_max
endif

.PHONY: $(ALL) $(PHONY)

all: $(ALL)

check_os_detected:
ifeq ($(TARGET),)
	$(error Couldn't auto-detect target OS. \
          Please, specify: make TARGET=<target_os>)
endif

SUPPORTED_OSS=linux win32 win64 macosx
check_os_supported:
ifeq ($(filter $(TARGET),$(SUPPORTED_OSS)),)
	$(error Target OS is not supported: $(TARGET). \
          Supported OSs: $(SUPPORTED_OSS))
endif

check_os: check_os_detected check_os_supported
	$(info Building Sound Design Toolkit for $(TARGET))

SH?=bash
# -----------------------------------------------------------------------------

# --- Compiler ----------------------------------------------------------------
CFLAGS_=$(CFLAGS) -O3 -Wall -Wno-unknown-pragmas -Werror
LDFLAGS=
ifeq ("$(TARGET)", "linux")
	CC=gcc
	CFLAGS_+= -fPIC
	LDFLAGS+= -lc -lm
endif
ifeq ("$(TARGET)", "win32")
	CC=i686-w64-mingw32-gcc
	LDFLAGS+= -static-libgcc
endif
ifeq ("$(TARGET)", "win64")
	CC=x86_64-w64-mingw32-gcc
	LDFLAGS+= -static-libgcc
endif
ifeq ("$(TARGET)", "macosx")
	CC=clang
	MACARCH=-arch x86_64 -arch arm64
	MACVERSION_N=11.0
	MACVERSION=-isysroot $(THIRDP_DIR)/MacOSX-SDKs/MacOSX$(MACVERSION_N).sdk -mmacosx-version-min=$(MACVERSION_N)
	CFLAGS_+= -g $(MACARCH) $(MACVERSION)
	SHARED_LDFLAGS=$(LDFLAGS) -dynamiclib -headerpad_max_install_names $(MACARCH) $(MACVERSION)
else
	SHARED_LDFLAGS=-shared $(LDFLAGS)
endif

define build-lib
$(CC) $(SHARED_LDFLAGS) $1 -o $@ $^
endef

define build-obj
$(CC) $(CFLAGS_) $1 -c $< -o $@
endef

define make-dir
mkdir -p $(if $(1),$(1),$@)
endef
# -----------------------------------------------------------------------------

# --- Clean build -------------------------------------------------------------
clean:
	$(info Deleting build directory)
	rm -rf $(BUILDDIR)

$(BUILDDIR):; $(make-dir)
# -----------------------------------------------------------------------------

# --- JSON --------------------------------------------------------------------
JSONP_DIR=$(THIRDP_DIR)/json-parser
JSONB_DIR=$(THIRDP_DIR)/json-builder

INCLUDE_JSON=-I$(JSONP_DIR) -I$(JSONB_DIR)
JSONP_BUILDDIR=$(strip $(call get_build_dest,$(JSONP_DIR)))
JSONB_BUILDDIR=$(strip $(call get_build_dest,$(JSONB_DIR)))
JSON_OBJS=$(strip $(call get_objects,$(JSONP_DIR)) $(call get_objects,$(JSONB_DIR)))

$(JSONP_BUILDDIR):; $(make-dir)
$(JSONB_BUILDDIR):; $(make-dir)

$(JSONP_BUILDDIR)/%.o: $(JSONP_DIR)/%.c | $(JSONP_BUILDDIR)
	$(build-obj)
$(JSONB_BUILDDIR)/%.o: $(JSONB_DIR)/%.c | $(JSONB_BUILDDIR)
	$(call build-obj,$(INCLUDE_JSON))
# -----------------------------------------------------------------------------

# --- Core library ------------------------------------------------------------
CORE_DIR=$(SRC_DIR)/SDT
INCLUDE_SDT=-I$(SRC_DIR) $(INCLUDE_JSON)
CORE_FNAME_NO_EXT=SDT
CORE_PREFIX=lib
ifeq ("$(TARGET)", "linux")
	CORE_EXT=.so
endif
ifeq ("$(TARGET)", "win32")
	CORE_EXT=.dll
endif
ifeq ("$(TARGET)", "win64")
	CORE_FNAME_NO_EXT=SDT64
	CORE_EXT=.dll
endif
ifeq ("$(TARGET)", "macosx")
	CORE_PREFIX=
	CORE_LDFLAGS=-framework System
endif
CORE_FNAME=$(CORE_PREFIX)$(CORE_FNAME_NO_EXT)$(CORE_EXT)
LINK_SDT=-L$(BUILDDIR) -l$(CORE_FNAME_NO_EXT)
CORE_BUILDDIR=$(strip $(call get_build_dest,$(CORE_DIR)))
CORE_OBJS=$(strip $(call get_objects,$(CORE_DIR)) $(call get_objects,$(CORE_DIR)/OSC) $(JSON_OBJS))
CORE_LIB=$(strip $(BUILDDIR)/$(CORE_FNAME))
CORE_ARTIFACT=$(CORE_LIB)

core_version:; @echo $(SDT_CORE_VERSION)
SDT_CORE_VERSION=$(word 3,$(shell grep "\#define SDT_ver " $(CORE_DIR)/SDTCommon.h))

ifeq ("$(TARGET)", "macosx")
# --- |||                              ||| ---
# --- |||     Framework for MacOSX     ||| ---
# --- vvv                              vvv ---
CORE_FRAMEWORK_FNAME=$(CORE_FNAME_NO_EXT).framework
CORE_FRAMEWORK=$(strip $(BUILDDIR)/$(CORE_FRAMEWORK_FNAME))
CORE_ARTIFACT=$(CORE_FRAMEWORK)
CORE_FRAMEWORK_HEADDIR=$(CORE_FRAMEWORK)/Versions/A/Headers
CORE_FRAMEWORK_TEMPLATE=$(TEMPLATE_DIR)/$(CORE_FRAMEWORK_FNAME)
CORE_FRAMEWORK_LIBDIR=$(strip $(CORE_FRAMEWORK)/Versions/A)
LINK_SDT=-F$(BUILDDIR) -framework $(CORE_FNAME_NO_EXT)

CORE_SRC_HEADS=$(call get_sources,$(CORE_DIR),h) \
               $(call get_sources,$(JSONP_DIR),h) \
               $(call get_sources,$(JSONB_DIR),h)
CORE_SRC_OSC_HEADS=$(call get_sources,$(CORE_DIR)/OSC,h)

$(CORE_FRAMEWORK): $(CORE_FRAMEWORK_TEMPLATE) $(CORE_LIB) $(CORE_SRC_HEADS) $(CORE_SRC_OSC_HEADS)
	rm -rf $@
	mkdir -p $(CORE_FRAMEWORK_HEADDIR)/OSC
	mkdir -p $(CORE_FRAMEWORK_LIBDIR)
	cp $(CORE_SRC_HEADS) $(CORE_FRAMEWORK_HEADDIR)
	cp $(CORE_SRC_OSC_HEADS) $(CORE_FRAMEWORK_HEADDIR)/OSC
	cp $(CORE_LIB) $(CORE_FRAMEWORK_LIBDIR)
	cp -a $(CORE_FRAMEWORK_TEMPLATE)/* $@
	install_name_tool -id @rpath/$(CORE_FNAME) $(CORE_FRAMEWORK)/$(CORE_FNAME)
# --- ^^^                              ^^^ ---
# --- |||     Framework for MacOSX     ||| ---
# --- |||                              ||| ---
endif
core: $(CORE_ARTIFACT); $(info Core library built (v$(SDT_CORE_VERSION)): $<)
$(CORE_LIB): $(CORE_OBJS); $(call build-lib,$(CORE_LDFLAGS))
$(CORE_BUILDDIR): $(CORE_BUILDDIR)/OSC
$(CORE_BUILDDIR)/OSC:; $(make-dir)
$(CORE_BUILDDIR)/%.o: $(CORE_DIR)/%.c | $(CORE_BUILDDIR)
	$(call build-obj,$(INCLUDE_JSON))
# -----------------------------------------------------------------------------

# --- Test --------------------------------------------------------------------
CUTEST_DIR=$(THIRDP_DIR)/cutest
TEST_DIR=$(ROOT)/tests
CUTEST_BUILDDIR=$(strip $(call get_build_dest,$(CUTEST_DIR)))
TEST_BUILDDIR=$(strip $(call get_build_dest,$(TEST_DIR)))
TEST_RUNNER_SRC=$(TEST_BUILDDIR)/AllTests.c
TEST_SRCS?=$(strip $(call get_sources,$(TEST_DIR)))
_TEST_SRCS=$(TEST_DIR)/SDTTestUtils.c $(TEST_SRCS)
TEST_OBJS=$(strip $(call get_objects,$(TEST_DIR))) $(patsubst %.c,%.o,$(TEST_RUNNER_SRC))
CUTEST_OBJS=$(CUTEST_BUILDDIR)/CuTest.o
TEST_EXE:=$(BUILDDIR)/test
ifeq ("$(TARGET)", "win32")
	TEST_EXE:=$(TEST_EXE).exe
endif
ifeq ("$(TARGET)", "win64")
	TEST_EXE:=$(TEST_EXE).exe
endif

test: $(TEST_EXE)
	$(info Running tests: $<)
	$<
testrunner: $(TEST_EXE)
	$(info Compiled test runner: $<)
$(TEST_EXE): $(TEST_RUNNER_OBJ) $(TEST_OBJS) $(CUTEST_OBJS) $(CORE_OBJS) | $(BUILDDIR)
	$(CC) -o $@ $(TEST_RUNNER_OBJ) $(TEST_OBJS) $(CUTEST_OBJS) $(CORE_OBJS) $(LDFLAGS)

$(CUTEST_BUILDDIR)/%.o: $(CUTEST_DIR)/%.c | $(CUTEST_BUILDDIR)
	$(call build-obj,)
$(TEST_BUILDDIR)/%.o: $(TEST_DIR)/%.c | $(TEST_BUILDDIR)
	$(call build-obj,$(INCLUDE_SDT) -I$(CUTEST_DIR))
$(TEST_BUILDDIR)/%.o: $(TEST_BUILDDIR)/%.c
	$(call build-obj,$(INCLUDE_SDT) -I$(CUTEST_DIR))
$(TEST_RUNNER_SRC): $(CUTEST_DIR)/make-tests.sh $(_TEST_SRCS) | $(TEST_BUILDDIR)
	$(SH) $(CUTEST_DIR)/make-tests.sh $(_TEST_SRCS) > $@
$(CUTEST_BUILDDIR):; $(make-dir)
$(TEST_BUILDDIR):; $(make-dir)
# -----------------------------------------------------------------------------

# --- Pd ----------------------------------------------------------------------
PD_DIR=$(SRC_DIR)/Pd
PDPATCH_DIR=$(ROOT)/Pd
PDSDK_VER=0.54.1
PDSDK_DIR=$(THIRDP_DIR)/Pd/pd-$(PDSDK_VER)
INCLUDE_PD_SDK=-I$(PDSDK_DIR)
ifeq ("$(TARGET)", "linux")
	PD_FNAME=SDT.pd_linux
endif
ifeq ("$(TARGET)", "win32")
	PD_FNAME=SDT.dll
	LINK_PD_SDK=-L$(PDSDK_DIR) -lpd
endif
ifeq ("$(TARGET)", "win64")
	PD_FNAME=SDT.dll
	LINK_PD_SDK=-L$(PDSDK_DIR)/x64 -lpd
endif
ifeq ("$(TARGET)", "macosx")
	PD_FNAME=SDT.pd_darwin
	PD_LDFLAGS=-undefined dynamic_lookup
endif
PD_BUILDDIR=$(strip $(call get_build_dest,$(PD_DIR)))
PD_OBJS=$(strip $(call get_objects,$(PD_DIR)))
PD_LIB=$(strip $(BUILDDIR)/$(PD_FNAME))

pd_version:; @echo $(SDT_PD_VERSION)
# Pure make syntax doesn't work for make < 4.2
# (reading from file was unsupported)
# SDT_PD_VERSION=$(file < $(ROOT)/Pd/VERSION)
# Using shell for backwards compatibility
SDT_PD_VERSION=$(shell cat $(ROOT)/Pd/VERSION)

pd: $(PD_LIB); $(info Pd library built (v$(SDT_PD_VERSION)): $<)
$(PD_LIB): $(PD_OBJS) $(CORE_OBJS);
	$(call build-lib,$(LINK_PD_SDK) $(PD_LDFLAGS))
$(PD_BUILDDIR):; $(make-dir)
$(PD_BUILDDIR)/%.o: $(PD_DIR)/%.c | $(PD_BUILDDIR)
	$(call build-obj,$(INCLUDE_SDT) $(INCLUDE_PD_SDK) \
	                 -DSDT_PD_ver="$(SDT_PD_VERSION)")
# -----------------------------------------------------------------------------

# --- Max ---------------------------------------------------------------------
MAX_DIR=$(SRC_DIR)/Max
MAXSDK_DIR=$(THIRDP_DIR)/max-sdk-base/c74support
MAX_PACKNAME=Sound Design Toolkit

#  --- Version ---
max_version:; @echo $(SDT_MAX_VERSION)
SDT_MAX_VERSION:=$(shell grep "\"version\"" "$(ROOT)/MaxPackage/package-info.json")
SDT_MAX_VERSION:=$(filter-out :,$(SDT_MAX_VERSION))
SDT_MAX_VERSION:=$(word 2,$(SDT_MAX_VERSION))
comma:=,
SDT_MAX_VERSION:=$(subst $(comma),,$(SDT_MAX_VERSION))
SDT_MAX_VERSION:=$(subst ",,$(SDT_MAX_VERSION))
#  --- Version ---

INCLUDE_MAX_SDK=-I$(MAXSDK_DIR)/max-includes -I$(MAXSDK_DIR)/msp-includes
MAX_CFLAGS=-DDENORM_WANT_FIX=1 -DNO_TRANSLATION_SUPPORT=1 \
           -DC74_NO_DEPRECATION -fvisibility=hidden \
           -Wno-unused-function \
           -DSDT_MAX_ver="$(SDT_MAX_VERSION)" -DSDT_MAX_PACKNAME="$(MAX_PACKNAME)"

ifeq ("$(TARGET)", "win32")
	LINK_MAX_SDK=-L$(MAXSDK_DIR)/max-includes \
	             -L$(MAXSDK_DIR)/msp-includes \
	             -lMaxAPI -lMaxAudio
	MAX_CFLAGS+= -DWIN_VERSION -DWIN_EXT_VERSION
	MAX_EXTS_EXT=mxe
endif
ifeq ("$(TARGET)", "win64")
	LINK_MAX_SDK=-L$(MAXSDK_DIR)/max-includes/x64 \
	             -L$(MAXSDK_DIR)/msp-includes/x64 \
	             -lMaxAPI -lMaxAudio
	MAX_CFLAGS+= -DWIN_VERSION -DWIN_EXT_VERSION
	MAX_EXTS_EXT=mxe64
endif
ifeq ("$(TARGET)", "macosx")
	LINK_MAX_SDK=@$(MAXSDK_DIR)/max-includes/c74_linker_flags.txt \
	             -L$(MAXSDK_DIR)/max-includes \
	             -L$(MAXSDK_DIR)/msp-includes \
	             -F$(MAXSDK_DIR)/max-includes \
	             -F$(MAXSDK_DIR)/msp-includes \
	             -framework MaxAudioAPI
	MAX_CFLAGS+= -DMAC_VERSION -DMAC_EXT_VERSION -Dpowerc \
	             -include $(MAXSDK_DIR)/max-includes/macho-prefix.pch
	MAX_EXTS_EXT=mxo
endif

MAX_BUILDDIR=$(strip $(call get_build_dest,$(MAX_DIR)))
MAX_EXTS_SRCS=$(strip $(wildcard $(MAX_DIR)/sdt.*.c))
MAX_HELPER_SRCS=$(strip $(wildcard $(MAX_DIR)/SDT*.c))

MAX_HELPER_OBJS=$(call get_build_dest, $(patsubst %.c,%.o,$(MAX_HELPER_SRCS)))
MAX_EXTS=$(call get_build_dest, $(patsubst %.c,%.$(MAX_EXTS_EXT), $(MAX_EXTS_SRCS)))

max: $(MAX_EXTS); $(info Max library built (v$(SDT_MAX_VERSION)): $^)

$(MAX_BUILDDIR):; $(make-dir)
$(MAX_BUILDDIR)/%.o: $(MAX_DIR)/%.c | $(MAX_BUILDDIR)
	$(call build-obj,$(INCLUDE_SDT) $(INCLUDE_MAX_SDK) $(MAX_CFLAGS))
ifeq ("$(TARGET)", "macosx")
MAX_FRAMEWORK_TEMPLATE=$(TEMPLATE_DIR)/Max7External.mxo
$(MAX_BUILDDIR)/%.$(MAX_EXTS_EXT)/Contents/MacOS:; $(make-dir)

$(MAX_BUILDDIR)/%.$(MAX_EXTS_EXT): EXTNAME=$(patsubst $(MAX_BUILDDIR)/%.$(MAX_EXTS_EXT),%,$@)
$(MAX_BUILDDIR)/%.$(MAX_EXTS_EXT): RFC1034=$(patsubst %~,%-,$(EXTNAME))
$(MAX_BUILDDIR)/%.$(MAX_EXTS_EXT): $(MAX_BUILDDIR)/%.o \
                                   $(MAX_HELPER_OBJS) \
                                   $(MAX_FRAMEWORK_TEMPLATE) \
                                   $(CORE_FRAMEWORK)
	rm -rf $@
	mkdir -p $@/Contents/MacOS
	cp -a $(MAX_FRAMEWORK_TEMPLATE)/* $@
	sed -i "" s/\$${PRODUCT_NAME}/$(EXTNAME)/g $@/Contents/Info.plist
	sed -i "" s/\$${PRODUCT_NAME:rfc1034identifier}/$(RFC1034)/g $@/Contents/Info.plist
	sed -i "" s/\$${PRODUCT_VERSION}/$(SDT_MAX_VERSION)/g $@/Contents/Info.plist
	$(CC) $(SHARED_LDFLAGS) $(LINK_MAX_SDK) $(LINK_SDT) -o $@/Contents/MacOS/$(EXTNAME) \
		$< $(MAX_HELPER_OBJS)
	install_name_tool -id @rpath/$(EXTNAME) $@/Contents/MacOS/$(EXTNAME)
	install_name_tool -add_rpath @loader_path/../../../../support/SDT.framework $@/Contents/MacOS/$(EXTNAME)
	install_name_tool -add_rpath @executable_path/../Resources/C74/packages/SDT/support/SDT.framework $@/Contents/MacOS/$(EXTNAME)
else
$(MAX_BUILDDIR)/%.$(MAX_EXTS_EXT): $(MAX_BUILDDIR)/%.o $(MAX_BUILDDIR)/%.def \
                                   $(MAX_HELPER_OBJS) $(CORE_LIB)
	$(CC) $(SHARED_LDFLAGS) $(filter-out $(CORE_LIB),$^) -o $@ $(LINK_MAX_SDK) $(LINK_SDT)
$(MAX_BUILDDIR)/%.def: $(TEMPLATE_DIR)/Info.def | $(MAX_BUILDDIR)
	cp $< $@
	sed -i $@ -e s/\$${PRODUCT_NAME}/$(patsubst $(strip $(MAX_BUILDDIR))/%.def,%,$@)/g
endif
NOTINTERMEDIATE+= $(MAX_HELPER_OBJS)
# -----------------------------------------------------------------------------

SDT_FULL_VERSION=v$(SDT_CORE_VERSION)-Max$(SDT_MAX_VERSION)-Pd$(SDT_PD_VERSION)
full_version:; @echo $(SDT_FULL_VERSION)

# --- Un/Installers -----------------------------------------------------------
CORE_SUBDIR=SDT
PD_SUBDIR=SDT
DEFAULT_CORE_DSTDIR=
DEFAULT_PD_DSTDIR=
DEFAULT_MAX_DSTDIR=
CORE_HEADER_SUBDIR=include/$(CORE_SUBDIR)
CORE_LIB_SUBDIR=lib
ifeq ("$(TARGET)", "linux")
	DEFAULT_CORE_DSTDIR=/usr
	DEFAULT_PD_DSTDIR=/usr/lib/pd/extra
endif

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
ifeq ("$(TARGET)", "macosx")
	@mkdir -p "$(DSTDIR)/$(CORE_SUBDIR)"
	@cp -a $(CORE_FRAMEWORK) "$(DSTDIR)/$(CORE_SUBDIR)"
else
	@mkdir -p "$(DSTDIR)/$(CORE_HEADER_SUBDIR)/OSC"
	@mkdir -p "$(DSTDIR)/$(CORE_LIB_SUBDIR)"
	@cp -a $(CORE_DIR)/*.h "$(DSTDIR)/$(CORE_HEADER_SUBDIR)"
	@cp -a $(CORE_DIR)/OSC/*.h "$(DSTDIR)/$(CORE_HEADER_SUBDIR)/OSC"
	@cp -a $(JSONP_DIR)/*.h "$(DSTDIR)/$(CORE_HEADER_SUBDIR)"
	@cp -a $(JSONB_DIR)/*.h "$(DSTDIR)/$(CORE_HEADER_SUBDIR)"
	@cp -a $(CORE_LIB) "$(DSTDIR)/$(CORE_LIB_SUBDIR)"
endif
	$(info Sound Design Toolkit 'Core Library' installed in '$(DSTDIR)')

uninstall_core:
	$(call get_dstdir, $(DEFAULT_CORE_DSTDIR))
	$(call check_dst_string)
	$(call check_dst_exists)
ifeq ("$(TARGET)", "macosx")
	@rm -rf "$(DSTDIR)/$(CORE_SUBDIR)"
else
	@rm -rf "$(DSTDIR)/$(CORE_HEADER_SUBDIR)"
	@rm -f "$(DSTDIR)/$(CORE_LIB_SUBDIR)/$(CORE_FNAME)"
endif
	$(info Sound Design Toolkit 'Core Library' removed from '$(DSTDIR)')

install_pd:
	$(call get_dstdir, $(DEFAULT_PD_DSTDIR))
	$(call check_dst_string)
	$(call check_dst_exists)
	@mkdir -p "$(DSTDIR)/$(PD_SUBDIR)"
	@cp -a $(PDPATCH_DIR)/* "$(DSTDIR)/$(PD_SUBDIR)"
	@cp -a $(PD_LIB) "$(DSTDIR)/$(PD_SUBDIR)"
	$(info Sound Design Toolkit for PureData \
			installed in '$(DSTDIR)/$(PD_SUBDIR)')

uninstall_pd:
	$(call get_dstdir, $(DEFAULT_PD_DSTDIR))
	$(call check_dst_string)
	$(call check_dst_exists)
	@rm -rf "$(DSTDIR)/$(PD_SUBDIR)"
	$(info Sound Design Toolkit for PureData \
	       removed from '$(DSTDIR)/$(PD_SUBDIR)')

install_max:
	$(call get_dstdir, $(DEFAULT_MAX_DSTDIR))
	$(call check_dst_string)
	$(call check_dst_exists)
	@mkdir -p "$(DSTDIR)/$(MAX_PACKNAME)/externals"
	@mkdir -p "$(DSTDIR)/$(MAX_PACKNAME)/support"
	@cp -a $(ROOT)/MaxPackage/* "$(DSTDIR)/$(MAX_PACKNAME)"
	@cp $(ROOT)/LICENSE.txt "$(DSTDIR)/$(MAX_PACKNAME)"
	@cp $(ROOT)/COPYING.txt "$(DSTDIR)/$(MAX_PACKNAME)"
	@cp -a $(CORE_ARTIFACT) "$(DSTDIR)/$(MAX_PACKNAME)/support"
	@cp -a $(MAX_EXTS) "$(DSTDIR)/$(MAX_PACKNAME)/externals"
	$(info Sound Design Toolkit for Max \
			installed in '$(DSTDIR)/$(MAX_PACKNAME)')

uninstall_max:
	$(call get_dstdir, $(DEFAULT_MAX_DSTDIR))
	$(call check_dst_string)
	$(call check_dst_exists)
	@rm -rf "$(DSTDIR)/$(MAX_PACKNAME)"
	$(info Sound Design Toolkit for Max \
	       removed from '$(DSTDIR)/$(MAX_PACKNAME)')
# -----------------------------------------------------------------------------

.NOTINTERMEDIATE: $(NOTINTERMEDIATE)
