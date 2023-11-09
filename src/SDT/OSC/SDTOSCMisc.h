// extern SDTOSCReturnCode SDTOSCMotor_log(void (*log)(const char *, ...),
//                                         const char *key, SDTMotor *x);

// extern SDTOSCReturnCode SDTOSCMotor_save(void (*log)(const char *, ...),
//                                          const char *key, SDTMotor *x,
//                                          const SDTOSCArgumentList *args);

// extern SDTOSCReturnCode SDTOSCMotor_load(void (*log)(const char *, ...),
//                                          const char *key, SDTMotor *x,
//                                          const SDTOSCArgumentList *args);

// extern SDTOSCReturnCode SDTOSCMotor_setMaxDelay(SDTMotor *x,
//                                                 const SDTOSCArgumentList
//                                                 *args);

// extern SDTOSCReturnCode SDTOSCMotor_setCycle(SDTMotor *x,
//                                              const SDTOSCArgumentList *args);

// extern SDTOSCReturnCode SDTOSCMotor_setNCylinders(
//     SDTMotor *x, const SDTOSCArgumentList *args);

// extern SDTOSCReturnCode SDTOSCMotor_setCylinderSize(
//     SDTMotor *x, const SDTOSCArgumentList *args);

// extern SDTOSCReturnCode SDTOSCMotor_setCompressionRatio(
//     SDTMotor *x, const SDTOSCArgumentList *args);

// extern SDTOSCReturnCode SDTOSCMotor_setSparkTime(
//     SDTMotor *x, const SDTOSCArgumentList *args);

// extern SDTOSCReturnCode SDTOSCMotor_setAsymmetry(
//     SDTMotor *x, const SDTOSCArgumentList *args);

// extern SDTOSCReturnCode SDTOSCMotor_setBackfire(SDTMotor *x,
//                                                 const SDTOSCArgumentList
//                                                 *args);

// extern SDTOSCReturnCode SDTOSCMotor_setIntakeSize(
//     SDTMotor *x, const SDTOSCArgumentList *args);

// extern SDTOSCReturnCode SDTOSCMotor_setExtractorSize(
//     SDTMotor *x, const SDTOSCArgumentList *args);

// extern SDTOSCReturnCode SDTOSCMotor_setExhaustSize(
//     SDTMotor *x, const SDTOSCArgumentList *args);

// extern SDTOSCReturnCode SDTOSCMotor_setExpansion(
//     SDTMotor *x, const SDTOSCArgumentList *args);

// extern SDTOSCReturnCode SDTOSCMotor_setMufflerSize(
//     SDTMotor *x, const SDTOSCArgumentList *args);

// extern SDTOSCReturnCode SDTOSCMotor_setMufflerFeedback(
//     SDTMotor *x, const SDTOSCArgumentList *args);

// extern SDTOSCReturnCode SDTOSCMotor_setOutletSize(
//     SDTMotor *x, const SDTOSCArgumentList *args);

// extern SDTOSCReturnCode SDTOSCMotor(void (*log)(const char *, ...),
//                                     const SDTOSCMessage *x);

// extern SDTOSCReturnCode SDTOSCPitchShift_log(void (*log)(const char *, ...),
//                                              const char *key, SDTPitchShift
//                                              *x);

// extern SDTOSCReturnCode SDTOSCPitchShift_save(void (*log)(const char *, ...),
//                                               const char *key, SDTPitchShift
//                                               *x, const SDTOSCArgumentList
//                                               *args);

// extern SDTOSCReturnCode SDTOSCPitchShift_load(void (*log)(const char *, ...),
//                                               const char *key, SDTPitchShift
//                                               *x, const SDTOSCArgumentList
//                                               *args);

// extern SDTOSCReturnCode SDTOSCPitchShift_setSize(
//     SDTPitchShift *x, const SDTOSCArgumentList *args);

// extern SDTOSCReturnCode SDTOSCPitchShift_setOversample(
//     SDTPitchShift *x, const SDTOSCArgumentList *args);

// extern SDTOSCReturnCode SDTOSCPitchShift_setRatio(
//     SDTPitchShift *x, const SDTOSCArgumentList *args);

// extern SDTOSCReturnCode SDTOSCPitchShift_setOverlap(
//     SDTPitchShift *x, const SDTOSCArgumentList *args);

// extern SDTOSCReturnCode SDTOSCPitchShift(void (*log)(const char *, ...),
//                                          const SDTOSCMessage *x);

// extern SDTOSCReturnCode SDTOSCReverb_log(void (*log)(const char *, ...),
//                                          const char *key, SDTReverb *x);

// extern SDTOSCReturnCode SDTOSCReverb_save(void (*log)(const char *, ...),
//                                           const char *key, SDTReverb *x,
//                                           const SDTOSCArgumentList *args);

// extern SDTOSCReturnCode SDTOSCReverb_load(void (*log)(const char *, ...),
//                                           const char *key, SDTReverb *x,
//                                           const SDTOSCArgumentList *args);

// extern SDTOSCReturnCode SDTOSCReverb_setMaxDelay(
//     SDTReverb *x, const SDTOSCArgumentList *args);

// extern SDTOSCReturnCode SDTOSCReverb_setXSize(SDTReverb *x,
//                                               const SDTOSCArgumentList
//                                               *args);

// extern SDTOSCReturnCode SDTOSCReverb_setYSize(SDTReverb *x,
//                                               const SDTOSCArgumentList
//                                               *args);

// extern SDTOSCReturnCode SDTOSCReverb_setZSize(SDTReverb *x,
//                                               const SDTOSCArgumentList
//                                               *args);

// extern SDTOSCReturnCode SDTOSCReverb_setRandomness(
//     SDTReverb *x, const SDTOSCArgumentList *args);

// extern SDTOSCReturnCode SDTOSCReverb_setTime(SDTReverb *x,
//                                              const SDTOSCArgumentList *args);

// extern SDTOSCReturnCode SDTOSCReverb_setTime1k(SDTReverb *x,
//                                                const SDTOSCArgumentList
//                                                *args);

// extern SDTOSCReturnCode SDTOSCReverb(void (*log)(const char *, ...),
//                                      const SDTOSCMessage *x);

// extern SDTOSCReturnCode SDTOSCRolling_log(void (*log)(const char *, ...),
//                                           const char *key, SDTRolling *x);

// extern SDTOSCReturnCode SDTOSCRolling_save(void (*log)(const char *, ...),
//                                            const char *key, SDTRolling *x,
//                                            const SDTOSCArgumentList *args);

// extern SDTOSCReturnCode SDTOSCRolling_load(void (*log)(const char *, ...),
//                                            const char *key, SDTRolling *x,
//                                            const SDTOSCArgumentList *args);

// extern SDTOSCReturnCode SDTOSCRolling_setGrain(SDTRolling *x,
//                                                const SDTOSCArgumentList
//                                                *args);

// extern SDTOSCReturnCode SDTOSCRolling_setDepth(SDTRolling *x,
//                                                const SDTOSCArgumentList
//                                                *args);

// extern SDTOSCReturnCode SDTOSCRolling_setMass(SDTRolling *x,
//                                               const SDTOSCArgumentList
//                                               *args);

// extern SDTOSCReturnCode SDTOSCRolling_setVelocity(
//     SDTRolling *x, const SDTOSCArgumentList *args);

// extern SDTOSCReturnCode SDTOSCRolling(void (*log)(const char *, ...),
//                                       const SDTOSCMessage *x);

// extern SDTOSCReturnCode SDTOSCScraping_log(void (*log)(const char *, ...),
//                                            const char *key, SDTScraping *x);

// extern SDTOSCReturnCode SDTOSCScraping_save(void (*log)(const char *, ...),
//                                             const char *key, SDTScraping *x,
//                                             const SDTOSCArgumentList *args);

// extern SDTOSCReturnCode SDTOSCScraping_load(void (*log)(const char *, ...),
//                                             const char *key, SDTScraping *x,
//                                             const SDTOSCArgumentList *args);

// extern SDTOSCReturnCode SDTOSCScraping_setGrain(SDTScraping *x,
//                                                 const SDTOSCArgumentList
//                                                 *args);

// extern SDTOSCReturnCode SDTOSCScraping_setForce(SDTScraping *x,
//                                                 const SDTOSCArgumentList
//                                                 *args);

// extern SDTOSCReturnCode SDTOSCScraping_setVelocity(
//     SDTScraping *x, const SDTOSCArgumentList *args);

// extern SDTOSCReturnCode SDTOSCScraping(void (*log)(const char *, ...),
//                                        const SDTOSCMessage *x);

// extern SDTOSCReturnCode SDTOSCWindCavity_log(void (*log)(const char *, ...),
//                                              const char *key, SDTWindCavity
//                                              *x);

// extern SDTOSCReturnCode SDTOSCWindCavity_save(void (*log)(const char *, ...),
//                                               const char *key, SDTWindCavity
//                                               *x, const SDTOSCArgumentList
//                                               *args);

// extern SDTOSCReturnCode SDTOSCWindCavity_load(void (*log)(const char *, ...),
//                                               const char *key, SDTWindCavity
//                                               *x, const SDTOSCArgumentList
//                                               *args);

// extern SDTOSCReturnCode SDTOSCWindCavity_setMaxDelay(
//     SDTWindCavity *x, const SDTOSCArgumentList *args);

// extern SDTOSCReturnCode SDTOSCWindCavity_setLength(
//     SDTWindCavity *x, const SDTOSCArgumentList *args);

// extern SDTOSCReturnCode SDTOSCWindCavity_setDiameter(
//     SDTWindCavity *x, const SDTOSCArgumentList *args);

// extern SDTOSCReturnCode SDTOSCWindCavity(void (*log)(const char *, ...),
//                                          const SDTOSCMessage *x);

// extern SDTOSCReturnCode SDTOSCWindKarman_log(void (*log)(const char *, ...),
//                                              const char *key, SDTWindKarman
//                                              *x);

// extern SDTOSCReturnCode SDTOSCWindKarman_save(void (*log)(const char *, ...),
//                                               const char *key, SDTWindKarman
//                                               *x, const SDTOSCArgumentList
//                                               *args);

// extern SDTOSCReturnCode SDTOSCWindKarman_load(void (*log)(const char *, ...),
//                                               const char *key, SDTWindKarman
//                                               *x, const SDTOSCArgumentList
//                                               *args);

// extern SDTOSCReturnCode SDTOSCWindKarman_setDiameter(
//     SDTWindKarman *x, const SDTOSCArgumentList *args);

// extern SDTOSCReturnCode SDTOSCWindKarman(void (*log)(const char *, ...),
//                                          const SDTOSCMessage *x);

// extern SDTOSCReturnCode SDTOSCWindFlow_log(void (*log)(const char *, ...),
//                                            const char *key, SDTWindFlow *x);

// extern SDTOSCReturnCode SDTOSCWindFlow_save(void (*log)(const char *, ...),
//                                             const char *key, SDTWindFlow *x,
//                                             const SDTOSCArgumentList *args);

// extern SDTOSCReturnCode SDTOSCWindFlow_load(void (*log)(const char *, ...),
//                                             const char *key, SDTWindFlow *x,
//                                             const SDTOSCArgumentList *args);

// extern SDTOSCReturnCode SDTOSCWindFlow(void (*log)(const char *, ...),
//                                        const SDTOSCMessage *x);
