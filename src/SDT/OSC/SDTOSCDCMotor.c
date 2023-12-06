#include "SDTOSCDCMotor.h"

#include <string.h>

#include "../SDTDCMotor.h"

int SDTOSCDCMotor(const SDTOSCMessage *x) {
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
  if (!strcmp("log", k)) return SDTOSCDCMotor_log(x);
  if (!strcmp("save", k)) return SDTOSCDCMotor_save(x);
  if (!strcmp("load", k)) return SDTOSCDCMotor_load(x);
  if (!strcmp("loads", k)) return SDTOSCDCMotor_loads(x);
  if (!strcmp("coils", k)) return SDTOSCDCMotor_setCoils(x);
  if (!strcmp("size", k)) return SDTOSCDCMotor_setSize(x);
  if (!strcmp("rpm", k)) return SDTOSCDCMotor_setRpm(x);
  if (!strcmp("stress", k)) return SDTOSCDCMotor_setLoad(x);
  if (!strcmp("reson", k)) return SDTOSCDCMotor_setReson(x);
  if (!strcmp("gearRatio", k) || !strcmp("ratio", k))
    return SDTOSCDCMotor_setGearRatio(x);
  if (!strcmp("harshness", k) || !strcmp("harsh", k))
    return SDTOSCDCMotor_setHarshness(x);
  if (!strcmp("rotorGain", k) || !strcmp("rotor", k))
    return SDTOSCDCMotor_setRotorGain(x);
  if (!strcmp("gearGain", k) || !strcmp("gear", k))
    return SDTOSCDCMotor_setGearGain(x);
  if (!strcmp("brushGain", k) || !strcmp("brush", k))
    return SDTOSCDCMotor_setBrushGain(x);
  if (!strcmp("airGain", k) || !strcmp("air", k) || !strcmp("fan", k))
    return SDTOSCDCMotor_setAirGain(x);

  SDTOSC_MESSAGE_LOGA(ERROR,
                      "\n  %s\n  [NOT IMPLEMENTED] The specified method is not"
                      " implemented: % s\n %s\n ",
                      x, k, SDTOSC_rtfm_string());
  return 2;
}

_SDTOSC_LOG_FUNCTION(DCMotor)
_SDTOSC_SAVE_FUNCTION(DCMotor)
_SDTOSC_LOAD_FUNCTION(DCMotor, )
_SDTOSC_LOADS_FUNCTION(DCMotor, )

_SDTOSC_SETTER_FUNCTION(DCMotor, coils, Coils, long, Float, float, )
_SDTOSC_FLOAT_SETTER_FUNCTION(DCMotor, rpm, Rpm, double, )
_SDTOSC_FLOAT_SETTER_FUNCTION(DCMotor, load, Load, double, )
_SDTOSC_FLOAT_SETTER_FUNCTION(DCMotor, size, Size, double, )
_SDTOSC_FLOAT_SETTER_FUNCTION(DCMotor, reson, Reson, double, )
_SDTOSC_FLOAT_SETTER_FUNCTION(DCMotor, gearRatio, GearRatio, double, )
_SDTOSC_FLOAT_SETTER_FUNCTION(DCMotor, harshness, Harshness, double, )
_SDTOSC_FLOAT_SETTER_FUNCTION(DCMotor, rotorGain, RotorGain, double, )
_SDTOSC_FLOAT_SETTER_FUNCTION(DCMotor, gearGain, GearGain, double, )
_SDTOSC_FLOAT_SETTER_FUNCTION(DCMotor, brushGain, BrushGain, double, )
_SDTOSC_FLOAT_SETTER_FUNCTION(DCMotor, airGain, AirGain, double, )
