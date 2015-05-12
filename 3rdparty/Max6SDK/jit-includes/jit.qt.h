/* 
	jit.qt.h

	Copyright 2001-2005 - Cycling '74
	Jeremy Bernstein jeremy@bootsquad.com
	
*/

#ifndef __JIT_QT_H__
#define __JIT_QT_H__

#if C74_PRAGMA_STRUCT_PACKPUSH
    #pragma pack(push, 2)
#elif C74_PRAGMA_STRUCT_PACK
    #pragma pack(2)
#endif

#ifdef __cplusplus
extern "C" {
#endif

#ifdef C74_USING_QUICKTIME

#if TARGET_RT_MAC_MACHO || TARGET_MACHO
#include <QuickTime/Movies.h>
#include <QuickTime/QuickTimeComponents.h>
#else
#include <Movies.h>
#include <QuicktimeComponents.h>
#endif

#include "ext_qtstubs.h"
	
void *jit_qt_component_open(void *x, Component c, t_symbol *name);
t_jit_err jit_qt_component_close(void *x, void *o);

void jit_qt_utils_gensymbols(void);
t_jit_err jit_qt_utils_moviedataref_create(t_symbol **sname, short *path, Handle *dataRef, OSType *dataRefType);
Movie jit_qt_utils_moviefile_create(t_symbol **sname, short *path, long flags, DataHandler *dhandler);
// same as above, but creates a file in the system's temp directory - sname == _jit_sym_nothing means unique name
Movie jit_qt_utils_tempmoviefile_create(t_symbol **sname, short *path, long flags, DataHandler *dhandler);
Boolean jit_qt_utils_tempfile(char *name, Handle *dataRef, OSType *dataRefType);
long jit_qt_utils_moviefile_close(Movie movie, DataHandler dhandler);
// bDataRef will be deleted
t_jit_err jit_qt_utils_exchange_files(t_object *owner, Handle aDataRef, OSType aDataRefType, Handle bDataRef, OSType bDataRefType);
Track jit_qt_utils_trackmedia_add(Movie movie, long type, Rect *trackframe, long vol, long timescale);
Media jit_qt_utils_trackmedia_get(Track track);
long jit_qt_utils_trackmedia_close(Track track, long trackstart, long mediastart);
long jit_qt_utils_trackmedia_dispose(Track track);
void jit_qt_utils_trackname_set(Track track, t_symbol *s);
t_symbol *jit_qt_utils_trackname_get(Track track);
t_symbol *jit_qt_utils_tracktype_get(Track track);
t_symbol *jit_qt_utils_tracktypecode_get(Track track);

t_symbol *jit_qt_utils_mediatype2sym(long type);
long jit_qt_utils_sym2mediatype(t_symbol *s);
t_symbol *jit_qt_utils_filetype2sym(long type);
long jit_qt_utils_sym2filetype(t_symbol *s);

// substitutes for Apple's non-working 64-bit Endian swap functions
double jit_qt_utils_double_BtoN(double d);
double jit_qt_utils_double_NtoB(double d);

void jit_qt_utils_iter_atom(QTAtomContainer parent, QTAtom child);

#endif // #ifdef C74_USING_QUICKTIME

JIT_EX_DATA long _jit_qt_optimize;

void jit_qt_utils_type2str(t_fourcc type, char *typestr);
t_fourcc jit_qt_utils_str2type(char *typestr);

#ifdef __cplusplus
}
#endif

#if C74_PRAGMA_STRUCT_PACKPUSH
    #pragma pack(pop)
#elif C74_PRAGMA_STRUCT_PACK
    #pragma pack()
#endif

#endif
