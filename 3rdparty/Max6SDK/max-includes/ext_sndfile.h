#ifndef _EXT_SNDFILE_H_
#define _EXT_SNDFILE_H_

#ifdef __cplusplus
extern "C" {
#endif

#if C74_PRAGMA_STRUCT_PACKPUSH
    #pragma pack(push, 2)
#elif C74_PRAGMA_STRUCT_PACK
    #pragma pack(2)
#endif

typedef struct _sndfileinfo
{
	t_int32 sr;
	t_ptr_size length;
	t_ptr_size sampsize; // in bytes
	t_fourcc filetype;
	t_uint32 comptype;
	t_uint32 format;
	char name[128];
	t_int32 byteswap;
	t_int32 nchans;
	t_ptr_size frames;
	void *inst;
	void *markers;
	t_ptr_size framesize;
	t_ptr_size offset;
} t_sndfileinfo;

short sndfile_info(char *filename, short vol, t_fourcc type, t_sndfileinfo *info);
short soundfile_info(char *filename, short vol, t_fourcc type, t_sndfileinfo *info);
long sndfile_writeheader(t_filehandle fh, t_fourcc type, long size, long nchans, long ssize, long srate, t_fourcc samptype);

#if C74_PRAGMA_STRUCT_PACKPUSH
    #pragma pack(pop)
#elif C74_PRAGMA_STRUCT_PACK
    #pragma pack()
#endif

#define SF_FILETYPE_AIFF 		FOUR_CHAR_CODE('AIFF')
#define SF_FILETYPE_SD2 		FOUR_CHAR_CODE('Sd2f')
#define SF_FILETYPE_WAVE 		FOUR_CHAR_CODE('WAVE')
#define SF_FILETYPE_AU 			FOUR_CHAR_CODE('ULAW')
#define SF_FILETYPE_RAW 		FOUR_CHAR_CODE('DATA')

#define SF_SAMPTYPE_INT			FOUR_CHAR_CODE('NONE')
#define SF_SAMPTYPE_UINT		FOUR_CHAR_CODE('UNSN')
#define SF_SAMPTYPE_FL32		FOUR_CHAR_CODE('FL32')
#define SF_SAMPTYPE_FL64		FOUR_CHAR_CODE('FL64')
#define SF_SAMPTYPE_MULAW		FOUR_CHAR_CODE('ULAW')
#define SF_SAMPTYPE_ALAW		FOUR_CHAR_CODE('ALAW')

#define SF_SAMPTYPE_LE			FOUR_CHAR_CODE('sowt')		// little endian twos backwards


#ifdef __cplusplus
}
#endif

#endif // _EXT_SNDFILE_H_
