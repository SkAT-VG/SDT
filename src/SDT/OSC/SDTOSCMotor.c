#include "SDTOSCMotor.h"

#include <string.h>

#include "../SDTMotor.h"


int SDTOSCMotor(const SDTOSCMessage *x) {
  SDTOSC_MESSAGE_LOGA(VERBOSE, "\n  %s\n", x, "");
  const SDTOSCAddress *a = SDTOSCMessage_getAddress(x);
  if (SDTOSCAddress_getDepth(a) < 2) {
    SDTOSC_MESSAGE_LOGA(ERROR,
                        "\n  %s\n  [MISSING METHOD] Please, specify an OSC "
                        "method from the container\n  %s\n",
                        x, SDTOSC_rtfm_string());
    return 1;
  }
  const char *k = SDTOSCAddress_getNode(a, 1);
  if (!strcmp("log", k)) return SDTOSCMotor_log(x);
  if (!strcmp("save", k)) return SDTOSCMotor_save(x);
  if (!strcmp("load", k)) return SDTOSCMotor_load(x);
  if (!strcmp("loads", k)) return SDTOSCMotor_loads(x);
  if (!strcmp("cycle", k)) return SDTOSCMotor_setCycle(x);
  if (!strcmp("rpm", k)) return SDTOSCMotor_setRpm(x);
  if (!strcmp("throttle", k)) return SDTOSCMotor_setThrottle(x);
  if (!strcmp("nCylinders", k) || !strcmp("cylinders", k))
    return SDTOSCMotor_setNCylinders(x);
  if (!strcmp("cylinderSize", k) || !strcmp("cylinder", k))
    return SDTOSCMotor_setCylinderSize(x);
  if (!strcmp("compressionRatio", k) || !strcmp("compression", k) ||
      !strcmp("ratio", k))
    return SDTOSCMotor_setCompressionRatio(x);
  if (!strcmp("sparkTime", k) || !strcmp("spark", k))
    return SDTOSCMotor_setSparkTime(x);
  if (!strcmp("asymmetry", k)) return SDTOSCMotor_setAsymmetry(x);
  if (!strcmp("backfire", k)) return SDTOSCMotor_setBackfire(x);
  if (!strcmp("intakeSize", k)) return SDTOSCMotor_setIntakeSize(x);
  if (!strcmp("extractorSize", k) || !strcmp("extractor", k))
    return SDTOSCMotor_setExtractorSize(x);
  if (!strcmp("exhaustSize", k) || !strcmp("exhaust", k))
    return SDTOSCMotor_setExhaustSize(x);
  if (!strcmp("expansion", k)) return SDTOSCMotor_setExpansion(x);
  if (!strcmp("mufflerSize", k) || !strcmp("muffler", k))
    return SDTOSCMotor_setMufflerSize(x);
  if (!strcmp("outletSize", k) || !strcmp("outlet", k))
    return SDTOSCMotor_setOutletSize(x);
  if (!strcmp("damp", k)) return SDTOSCMotor_setDamp(x);
  if (!strcmp("dc", k)) return SDTOSCMotor_setDc(x);

  SDTOSC_MESSAGE_LOGA(ERROR,
                      "\n  %s\n  [NOT IMPLEMENTED] The specified method is not"
                      " implemented: % s\n %s\n ",
                      x, k, SDTOSC_rtfm_string());
  return 2;
}

_SDTOSC_LOG_FUNCTION(Motor)
_SDTOSC_SAVE_FUNCTION(Motor)
_SDTOSC_LOAD_FUNCTION(Motor, update)
_SDTOSC_LOADS_FUNCTION(Motor, update)

_SDTOSC_SETTER_FUNCTION(Motor, cycle, Cycle, long, Float, float, )
_SDTOSC_FLOAT_SETTER_FUNCTION(Motor, rpm, Rpm, double, )
_SDTOSC_FLOAT_SETTER_FUNCTION(Motor, throttle, Throttle, double, )
_SDTOSC_SETTER_FUNCTION(Motor, nCylinders, NCylinders, long, Float, float, )
_SDTOSC_FLOAT_SETTER_FUNCTION(Motor, cylinderSize, CylinderSize, double, )
_SDTOSC_FLOAT_SETTER_FUNCTION(Motor, compressionRatio, CompressionRatio,
                              double, )
_SDTOSC_FLOAT_SETTER_FUNCTION(Motor, sparkTime, SparkTime, double, )
_SDTOSC_FLOAT_SETTER_FUNCTION(Motor, asymmetry, Asymmetry, double, )
_SDTOSC_FLOAT_SETTER_FUNCTION(Motor, backfire, Backfire, double, )
_SDTOSC_FLOAT_SETTER_FUNCTION(Motor, intakeSize, IntakeSize, double, )
_SDTOSC_FLOAT_SETTER_FUNCTION(Motor, extractorSize, ExtractorSize, double, )
_SDTOSC_FLOAT_SETTER_FUNCTION(Motor, exhaustSize, ExhaustSize, double, )
_SDTOSC_FLOAT_SETTER_FUNCTION(Motor, expansion, Expansion, double, )
_SDTOSC_FLOAT_SETTER_FUNCTION(Motor, mufflerSize, MufflerSize, double, )
_SDTOSC_FLOAT_SETTER_FUNCTION(Motor, outletSize, OutletSize, double, )
_SDTOSC_FLOAT_SETTER_FUNCTION(Motor, damp, Damp, double, update)
_SDTOSC_FLOAT_SETTER_FUNCTION(Motor, dc, Dc, double, update)
