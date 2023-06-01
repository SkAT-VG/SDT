#include "SDTCommonMax.h"
#include "SDT/SDTCommon.h"
#include "ext.h"

static char _SDT_logBufferMax[MAXSDTMAXSTRING];

int SDT_maxPost(const char* fmt, ...) {
  va_list args;
  va_start(args, fmt);
  int n =
      vsnprintf(_SDT_logBufferMax, sizeof(char) * MAXSDTMAXSTRING, fmt, args);
  va_end(args);
  int s_len = strlen(_SDT_logBufferMax);
  if (_SDT_logBufferMax[s_len - 1] == '\n') _SDT_logBufferMax[s_len - 1] = 0;
  post("%s", _SDT_logBufferMax);
  SDT_eprintf("%s\n", _SDT_logBufferMax);
  return n;
}

void SDT_setupMaxLoggers() {
  // Debug on standard error, everything else on Max console
  SDT_setLogger(SDT_LOG_INFO, &SDT_maxPost, 1);
  SDT_setLogger(SDT_LOG_WARN, &SDT_maxPost, 1);
  SDT_setLogger(SDT_LOG_ERROR, &SDT_maxPost, 1);
}
