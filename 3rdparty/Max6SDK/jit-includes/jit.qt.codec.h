#ifndef __JIT_QT_CODEC_H__
#define __JIT_QT_CODEC_H__

#ifdef __cplusplus
	extern "C" {
#endif 

t_jit_err jit_qt_codec_getcodeclist_video(void *x, void *attr, long *ac, t_atom **av);
t_jit_err jit_qt_codec_getcodeclist_audio(void *x, void *attr, long *ac, t_atom **av);
t_jit_err jit_qt_codec_getcodeclist_gfx(void *x, void *attr, long *ac, t_atom **av);
void jit_qt_codec_getcodeclist_video_raw(long *count, t_symbol ***names);
void jit_qt_codec_getcodeclist_audio_raw(long *count, t_symbol ***names);
void jit_qt_codec_getcodeclist_gfx_raw(long *count, t_symbol ***names);
long jit_qt_codec_sym2qual(t_symbol *s); 
long jit_qt_codec_sym2type(t_symbol *s); 
long jit_qt_codec_sym2type_valid(t_symbol *s); 
t_symbol *jit_qt_codec_qual2sym(long qual); 
t_symbol *jit_qt_codec_type2sym(long type); 
t_symbol *jit_qt_codec_type2sym_valid(long type); 
long jit_qt_codec_sym2acodec(t_symbol *s); 
t_symbol *jit_qt_codec_acodec2sym(long acodec); 

/*
//codec types;
raw, cinepak, graphics, animation, video, componentvideo, jpeg, mjpega, 
mjpegb, sgi, planarrgb, macpaint, gif, photocd, qdgx, avrjpeg, opendmljpeg, 
bmp, winraw, vector, qd, h261, h263, dvntsc, dvpal, dvprontsc, dvpropal, flc, 
targa, png, tiff, componentvideosigned, componentvideounsigned, cmyk, 
microsoft, sorenson, indeo4, argb64, rgb48, alphagrey32, grey16, mpegyuv420, 
yuv420, sorensonyuv9, mpeg4, dvcntsc, dvcpal, dvcprontsc, dvcpropal,
yuv422, v308, v408, v216, v210, v410, r408, jpeg2000, pixlet, h264;
;
//codec qualities;
lossless, max, min, low, normal, high;
;
//audio codecs;
none, raw, big16, little16, float32, float64, 24bit, 32bit, 
little32, mace3, mace6, cdxa4, cdxa2, ima, ulaw, alaw, adpcm, 
dviima, dvaudio, qdesign, qdesign2, qualcomm, mp3, vdva, mpeg4;
*/

JIT_EX_DATA t_symbol *_jit_sym_codec_raw;                                       ///< cached #t_symbol @ingroup jitter
JIT_EX_DATA t_symbol *_jit_sym_codec_cinepak;                                   ///< cached #t_symbol @ingroup jitter
JIT_EX_DATA t_symbol *_jit_sym_codec_graphics;                                  ///< cached #t_symbol @ingroup jitter
JIT_EX_DATA t_symbol *_jit_sym_codec_animation;                                 ///< cached #t_symbol @ingroup jitter
JIT_EX_DATA t_symbol *_jit_sym_codec_video;                                     ///< cached #t_symbol @ingroup jitter
JIT_EX_DATA t_symbol *_jit_sym_codec_componentvideo;                            ///< cached #t_symbol @ingroup jitter
JIT_EX_DATA t_symbol *_jit_sym_codec_jpeg;                                      ///< cached #t_symbol @ingroup jitter
JIT_EX_DATA t_symbol *_jit_sym_codec_mjpega;                                    ///< cached #t_symbol @ingroup jitter
JIT_EX_DATA t_symbol *_jit_sym_codec_mjpegb;                                    ///< cached #t_symbol @ingroup jitter
JIT_EX_DATA t_symbol *_jit_sym_codec_sgi;                                       ///< cached #t_symbol @ingroup jitter
JIT_EX_DATA t_symbol *_jit_sym_codec_planarrgb;                                 ///< cached #t_symbol @ingroup jitter
JIT_EX_DATA t_symbol *_jit_sym_codec_macpaint;                                  ///< cached #t_symbol @ingroup jitter
JIT_EX_DATA t_symbol *_jit_sym_codec_gif;                                       ///< cached #t_symbol @ingroup jitter
JIT_EX_DATA t_symbol *_jit_sym_codec_photocd;                                   ///< cached #t_symbol @ingroup jitter
JIT_EX_DATA t_symbol *_jit_sym_codec_qdgx;                                      ///< cached #t_symbol @ingroup jitter
JIT_EX_DATA t_symbol *_jit_sym_codec_avrjpeg;                                   ///< cached #t_symbol @ingroup jitter
JIT_EX_DATA t_symbol *_jit_sym_codec_opendmljpeg;                               ///< cached #t_symbol @ingroup jitter
JIT_EX_DATA t_symbol *_jit_sym_codec_bmp;                                       ///< cached #t_symbol @ingroup jitter
JIT_EX_DATA t_symbol *_jit_sym_codec_winraw;                                    ///< cached #t_symbol @ingroup jitter
JIT_EX_DATA t_symbol *_jit_sym_codec_vector;                                    ///< cached #t_symbol @ingroup jitter
JIT_EX_DATA t_symbol *_jit_sym_codec_qd;                                        ///< cached #t_symbol @ingroup jitter
JIT_EX_DATA t_symbol *_jit_sym_codec_h261;                                      ///< cached #t_symbol @ingroup jitter
JIT_EX_DATA t_symbol *_jit_sym_codec_h263;                                      ///< cached #t_symbol @ingroup jitter
JIT_EX_DATA t_symbol *_jit_sym_codec_dvntsc;                                    ///< cached #t_symbol @ingroup jitter
JIT_EX_DATA t_symbol *_jit_sym_codec_dvpal;                                     ///< cached #t_symbol @ingroup jitter
JIT_EX_DATA t_symbol *_jit_sym_codec_dvprontsc;                                 ///< cached #t_symbol @ingroup jitter
JIT_EX_DATA t_symbol *_jit_sym_codec_dvpropal;                                  ///< cached #t_symbol @ingroup jitter
JIT_EX_DATA t_symbol *_jit_sym_codec_flc;                                       ///< cached #t_symbol @ingroup jitter
JIT_EX_DATA t_symbol *_jit_sym_codec_targa;                                     ///< cached #t_symbol @ingroup jitter
JIT_EX_DATA t_symbol *_jit_sym_codec_png;                                       ///< cached #t_symbol @ingroup jitter
JIT_EX_DATA t_symbol *_jit_sym_codec_tiff;                                      ///< cached #t_symbol @ingroup jitter
JIT_EX_DATA t_symbol *_jit_sym_codec_componentvideosigned;                      ///< cached #t_symbol @ingroup jitter
JIT_EX_DATA t_symbol *_jit_sym_codec_componentvideounsigned;                    ///< cached #t_symbol @ingroup jitter
JIT_EX_DATA t_symbol *_jit_sym_codec_cmyk;                                      ///< cached #t_symbol @ingroup jitter
JIT_EX_DATA t_symbol *_jit_sym_codec_microsoft;                                 ///< cached #t_symbol @ingroup jitter
JIT_EX_DATA t_symbol *_jit_sym_codec_sorenson;                                  ///< cached #t_symbol @ingroup jitter
JIT_EX_DATA t_symbol *_jit_sym_codec_sorenson3;                                 ///< cached #t_symbol @ingroup jitter
JIT_EX_DATA t_symbol *_jit_sym_codec_indeo4;                                    ///< cached #t_symbol @ingroup jitter
JIT_EX_DATA t_symbol *_jit_sym_codec_argb64;                                    ///< cached #t_symbol @ingroup jitter
JIT_EX_DATA t_symbol *_jit_sym_codec_rgb48;                                     ///< cached #t_symbol @ingroup jitter
JIT_EX_DATA t_symbol *_jit_sym_codec_alphagrey32;                               ///< cached #t_symbol @ingroup jitter
JIT_EX_DATA t_symbol *_jit_sym_codec_grey16;                                    ///< cached #t_symbol @ingroup jitter
JIT_EX_DATA t_symbol *_jit_sym_codec_mpegyuv420;                                ///< cached #t_symbol @ingroup jitter
JIT_EX_DATA t_symbol *_jit_sym_codec_yuv420;                                    ///< cached #t_symbol @ingroup jitter
JIT_EX_DATA t_symbol *_jit_sym_codec_sorensonyuv9;                              ///< cached #t_symbol @ingroup jitter
JIT_EX_DATA t_symbol *_jit_sym_codec_mpeg4;                                     ///< cached #t_symbol @ingroup jitter
JIT_EX_DATA t_symbol *_jit_sym_codec_dvcntsc; // alias to dvntsc                ///< cached #t_symbol @ingroup jitter
JIT_EX_DATA t_symbol *_jit_sym_codec_dvcpal; // alias to dvpal                  ///< cached #t_symbol @ingroup jitter
JIT_EX_DATA t_symbol *_jit_sym_codec_dvcprontsc; // alias to dvprontsc          ///< cached #t_symbol @ingroup jitter
JIT_EX_DATA t_symbol *_jit_sym_codec_dvcpropal; // // alias to dvpropal         ///< cached #t_symbol @ingroup jitter
// qt 7                                                                           
JIT_EX_DATA t_symbol *_jit_sym_codec_yuv422;                                    ///< cached #t_symbol @ingroup jitter
JIT_EX_DATA t_symbol *_jit_sym_codec_v308;                                      ///< cached #t_symbol @ingroup jitter
JIT_EX_DATA t_symbol *_jit_sym_codec_v408;                                      ///< cached #t_symbol @ingroup jitter
JIT_EX_DATA t_symbol *_jit_sym_codec_v216;                                      ///< cached #t_symbol @ingroup jitter
JIT_EX_DATA t_symbol *_jit_sym_codec_v210;                                      ///< cached #t_symbol @ingroup jitter
JIT_EX_DATA t_symbol *_jit_sym_codec_v410;                                      ///< cached #t_symbol @ingroup jitter
JIT_EX_DATA t_symbol *_jit_sym_codec_r408;                                      ///< cached #t_symbol @ingroup jitter
JIT_EX_DATA t_symbol *_jit_sym_codec_jpeg2000;                                  ///< cached #t_symbol @ingroup jitter
JIT_EX_DATA t_symbol *_jit_sym_codec_pixlet;                                    ///< cached #t_symbol @ingroup jitter
JIT_EX_DATA t_symbol *_jit_sym_codec_h264;                                      ///< cached #t_symbol @ingroup jitter
                                                                        
//quality                                                               
JIT_EX_DATA t_symbol *_jit_sym_codec_lossless;                                  ///< cached #t_symbol @ingroup jitter
JIT_EX_DATA t_symbol *_jit_sym_codec_max;                                       ///< cached #t_symbol @ingroup jitter
JIT_EX_DATA t_symbol *_jit_sym_codec_min;                                       ///< cached #t_symbol @ingroup jitter
JIT_EX_DATA t_symbol *_jit_sym_codec_low;                                       ///< cached #t_symbol @ingroup jitter
JIT_EX_DATA t_symbol *_jit_sym_codec_normal;                                    ///< cached #t_symbol @ingroup jitter
JIT_EX_DATA t_symbol *_jit_sym_codec_high;                                      ///< cached #t_symbol @ingroup jitter
                                                                        
//audio                                                                 
JIT_EX_DATA t_symbol *_jit_sym_codec_a_none;                                    ///< cached #t_symbol @ingroup jitter
JIT_EX_DATA t_symbol *_jit_sym_codec_a_raw;                                     ///< cached #t_symbol @ingroup jitter
JIT_EX_DATA t_symbol *_jit_sym_codec_a_big16;                                   ///< cached #t_symbol @ingroup jitter
JIT_EX_DATA t_symbol *_jit_sym_codec_a_little16;                                ///< cached #t_symbol @ingroup jitter
JIT_EX_DATA t_symbol *_jit_sym_codec_a_float32;                                 ///< cached #t_symbol @ingroup jitter
JIT_EX_DATA t_symbol *_jit_sym_codec_a_float64;                                 ///< cached #t_symbol @ingroup jitter
JIT_EX_DATA t_symbol *_jit_sym_codec_a_24bit;                                   ///< cached #t_symbol @ingroup jitter
JIT_EX_DATA t_symbol *_jit_sym_codec_a_32bit;                                   ///< cached #t_symbol @ingroup jitter
JIT_EX_DATA t_symbol *_jit_sym_codec_a_little32;                                ///< cached #t_symbol @ingroup jitter
JIT_EX_DATA t_symbol *_jit_sym_codec_a_mace3;                                   ///< cached #t_symbol @ingroup jitter
JIT_EX_DATA t_symbol *_jit_sym_codec_a_mace6;                                   ///< cached #t_symbol @ingroup jitter
JIT_EX_DATA t_symbol *_jit_sym_codec_a_cdxa4;                                   ///< cached #t_symbol @ingroup jitter
JIT_EX_DATA t_symbol *_jit_sym_codec_a_cdxa2;                                   ///< cached #t_symbol @ingroup jitter
JIT_EX_DATA t_symbol *_jit_sym_codec_a_ima;                                     ///< cached #t_symbol @ingroup jitter
JIT_EX_DATA t_symbol *_jit_sym_codec_a_ulaw;                                    ///< cached #t_symbol @ingroup jitter
JIT_EX_DATA t_symbol *_jit_sym_codec_a_alaw;                                    ///< cached #t_symbol @ingroup jitter
JIT_EX_DATA t_symbol *_jit_sym_codec_a_adpcm;                                   ///< cached #t_symbol @ingroup jitter
JIT_EX_DATA t_symbol *_jit_sym_codec_a_dviima;                                  ///< cached #t_symbol @ingroup jitter
JIT_EX_DATA t_symbol *_jit_sym_codec_a_dvaudio;                                 ///< cached #t_symbol @ingroup jitter
JIT_EX_DATA t_symbol *_jit_sym_codec_a_qdesign;                                 ///< cached #t_symbol @ingroup jitter
JIT_EX_DATA t_symbol *_jit_sym_codec_a_qdesign2;                                ///< cached #t_symbol @ingroup jitter
JIT_EX_DATA t_symbol *_jit_sym_codec_a_qualcomm;                                ///< cached #t_symbol @ingroup jitter
JIT_EX_DATA t_symbol *_jit_sym_codec_a_mp3;                                     ///< cached #t_symbol @ingroup jitter
JIT_EX_DATA t_symbol *_jit_sym_codec_a_vdva;                                    ///< cached #t_symbol @ingroup jitter
JIT_EX_DATA t_symbol *_jit_sym_codec_a_mpeg4;                                   ///< cached #t_symbol @ingroup jitter

#ifdef __cplusplus
}
#endif

#endif //__JIT_QT_CODEC_H__
