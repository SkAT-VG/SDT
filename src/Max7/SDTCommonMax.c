#include "SDTCommonMax.h"

#include "SDT/SDTCommon.h"
#include "ext.h"

static char _SDT_logBufferMax[MAXSDTMAXSTRING];

static int _SDT_maxPost(void (*post_fn)(C74_CONST char* s, ...),
                        unsigned char cprint, const char* fmt, va_list args) {
  int n =
      vsnprintf(_SDT_logBufferMax, sizeof(char) * MAXSDTMAXSTRING, fmt, args);
  int s_len = strlen(_SDT_logBufferMax);
  if (_SDT_logBufferMax[s_len - 1] == '\n') _SDT_logBufferMax[s_len - 1] = 0;
  post_fn("%s\n", _SDT_logBufferMax);
  if (cprint) {
    printf("%s\n", _SDT_logBufferMax);
  }
  return n;
}

int SDT_maxCPost(const char* fmt, ...) {
  va_list args;
  va_start(args, fmt);
  int n = _SDT_maxPost(&cpost, 0, fmt, args);
  va_end(args);
  return n;
}

int SDT_maxPost(const char* fmt, ...) {
  va_list args;
  va_start(args, fmt);
  int n = _SDT_maxPost(&post, 1, fmt, args);
  va_end(args);
  return n;
}

int SDT_maxError(const char* fmt, ...) {
  va_list args;
  va_start(args, fmt);
  int n = _SDT_maxPost(&error, 1, fmt, args);
  va_end(args);
  return n;
}

void SDT_setupMaxLoggers() {
  // Verbose on standard error
  SDT_setLogger(SDT_LOG_LEVEL_VERBOSE, &SDT_maxCPost, 1);
  // Everything else on Max console
  SDT_setLogger(SDT_LOG_LEVEL_DEBUG, &SDT_maxPost, 1);
  SDT_setLogger(SDT_LOG_LEVEL_INFO, &SDT_maxPost, 1);
  SDT_setLogger(SDT_LOG_LEVEL_WARN, &SDT_maxError, 1);
  SDT_setLogger(SDT_LOG_LEVEL_ERROR, &SDT_maxError, 1);
}
