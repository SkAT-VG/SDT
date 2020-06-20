/** @file SDTOSC.h
@defgroup OSC SDTOSC.h: Open Sound Control
Functions and structures to handle OSC messages for SDT.
@{
*/

#ifndef SDT_OSC_H
#define SDT_OSC_H

#ifdef __cplusplus
extern "C" {
#endif

#include "SDTResonators.h"

/** @defgroup osc_address OSC Address
This class represents OSC addresses
@{ */

/** @brief Data structure representing an OSC address. */
typedef struct SDTOSCAddress SDTOSCAddress;

/** @brief Object constructor.
@param[in] s String OSC address to parse. Null pointer is returned if string doesn't start with '/'
@return Pointer to the new instance */
extern SDTOSCAddress *SDTOSCAddress_new(const char *s);

/** @brief Object destructor.
@param[in] x Pointer to the instance to destroy */
extern void SDTOSCAddress_free(SDTOSCAddress *x);

/** @brief Convert to string an OSC address
@return String OSC address */
extern char *SDTOSCAddress_str(const SDTOSCAddress *x);

/** @brief Gets the number of nodes in the OSC address
@return Depth of OSC address */
extern unsigned int SDTOSCAddress_getDepth(const SDTOSCAddress *x);

/** @brief Gets the container or method name at the specified depth in the address
@param[in] node_idx Depth of the node (container / method) in the OSC address. Index 0 is for the first (non-root) node.
@return Node name as a C-string */
extern char *SDTOSCAddress_getNode(const SDTOSCAddress *x, unsigned int node_idx);

/** @brief Gets the address obtained by "opening the container", i.e. removing the first (non-root) node.
@return The new address */
extern SDTOSCAddress *SDTOSCAddress_openContainer(const SDTOSCAddress *x);

/** @} */
/** @defgroup osc_arguments OSC Argument
This class represents OSC arguments
@{ */

/** @brief Data structure representing an OSC argument */
typedef struct SDTOSCArgument SDTOSCArgument;

/** @brief Object constructor.
This object represents an usupported argument.
@return Pointer to the new instance */
extern SDTOSCArgument *SDTOSCArgument_new();

/** @brief Checks if the argument is unsupported
@return The truth value of the check */
extern int SDTOSCArgument_isUnsupported(const SDTOSCArgument *x);

/** @brief Object constructor.
@param[in] f Float value to use as an OSC argument
@return Pointer to the new instance */
extern SDTOSCArgument *SDTOSCArgument_newFloat(float f);

/** @brief Object constructor.
@param[in] s String value (character pointer) to use as an OSC argument
@return Pointer to the new instance */
extern SDTOSCArgument *SDTOSCArgument_newString(const char *s);

/** @brief Checks if the argument is a float
@return The truth value of the check */
extern int SDTOSCArgument_isFloat(const SDTOSCArgument *x);

/** @brief Gets the float value of the argument.
Argument should be previously checked with ::SDTOSCArgument_isFloat
@return The float value */
extern float SDTOSCArgument_getFloat(const SDTOSCArgument *x);

/** @brief Checks if the argument is a string
@return The truth value of the check */
extern int SDTOSCArgument_isString(const SDTOSCArgument *x);

/** @brief Gets the string value of the argument.
Argument should be previously checked with ::SDTOSCArgument_isString
@return The string as a character pointer */
extern const char *SDTOSCArgument_getString(const SDTOSCArgument *x);

/** @} */
/** @defgroup osc_argument_lists OSC Argument List
This class represents OSC argument lists
@{ */

/** @brief Data structure representing a list of OSC arguments */
typedef struct SDTOSCArgumentList SDTOSCArgumentList;

/** @brief Object constructor.
@return Pointer to the new instance */
extern SDTOSCArgumentList *SDTOSCArgumentList_new(int argc);

/** @brief Object copy constructor.
@return Pointer to the new instance */
extern SDTOSCArgumentList *SDTOSCArgumentList_copy(const SDTOSCArgumentList *x);

/** @brief Object copy constructor.
Only copies arguments in the specified range of indices [from, to).
@param[in] from The position of the first argument to copy.
@param[in] to The position of the first argument not to copy. If to < 0, then all arguments are copied from from until the end of the list.
@return Pointer to the new instance */
extern SDTOSCArgumentList *SDTOSCArgumentList_copyFromTo(const SDTOSCArgumentList *x, unsigned int from, int to);

/** @brief Object destructor.
@param[in] x Pointer to the instance to destroy */
extern void SDTOSCArgumentList_free(SDTOSCArgumentList *x);

/** @brief Puts a new argument in the list at the specified position.
The argument is unsupported.
@param[in] i The position in the list where to put the new argument. If the position is occupied, the old argument is destroyed. */
extern void SDTOSCArgumentList_set(SDTOSCArgumentList *x, int i);

/** @brief Puts a new argument in the list at the specified position.
@param[in] i The position in the list where to put the new argument. If the position is occupied, the old argument is destroyed. */
extern void SDTOSCArgumentList_setArgument(SDTOSCArgumentList *x, int i, SDTOSCArgument *a);

/** @brief Puts a new float argument in the list at the specified position.
@param[in] i The position in the list where to put the new argument. If the position is occupied, the old argument is destroyed.
@param[in] f The float value */
extern void SDTOSCArgumentList_setFloat(SDTOSCArgumentList *x, int i, float f);

/** @brief Puts a new string argument in the list at the specified position.
@param[in] i The position in the list where to put the new argument. If the position is occupied, the old argument is destroyed.
@param[in] s The string value */
extern void SDTOSCArgumentList_setString(SDTOSCArgumentList *x, int i, const char *s);

/** @brief Checks if no argument is at the specified position
@param[in] i The position in the list to check
@return The truth value of the check. Check succeeds if NULL pointer is at position i. */
extern int SDTOSCArgumentList_isEmpty(const SDTOSCArgumentList *x, int i);

/** @brief Checks if the argument at the specified position is unsupported
@param[in] i The position in the list to check
@return The truth value of the check. Check fails also if NULL pointer is at position i. */
extern int SDTOSCArgumentList_isUnsupported(const SDTOSCArgumentList *x, int i);

/** @brief Checks if the argument at the specified position is a float
@param[in] i The position in the list to check
@return The truth value of the check. Check fails also if NULL pointer is at position i. */
extern int SDTOSCArgumentList_isFloat(const SDTOSCArgumentList *x, int i);

/** @brief Checks if the argument at the specified position is a string
@param[in] i The position in the list to check
@return The truth value of the check. Check fails also if NULL pointer is at position i. */
extern int SDTOSCArgumentList_isString(const SDTOSCArgumentList *x, int i);

/** @brief Gets the float value of the argument at the specified position
Argument should be previously checked with ::SDTOSCArgumentList_isFloat
@return The float value */
extern float SDTOSCArgumentList_getFloat(const SDTOSCArgumentList *x, int i);

/** @brief Gets the string value of the argument at the specified position
Argument should be previously checked with ::SDTOSCArgumentList_isString
@return The float value */
extern const char *SDTOSCArgumentList_getString(const SDTOSCArgumentList *x, int i);

/** @} */

/** @defgroup osc_message OSC Message
This class represents OSC messages
@{ */

/** @brief Data structure representing an OSC message. */
typedef struct SDTOSCMessage SDTOSCMessage;

/** @brief Object constructor.
@param[in] address OSC address
@param[in] args OSC argument list
@return Pointer to the new instance */
extern SDTOSCMessage *SDTOSCMessage_new(SDTOSCAddress *address, SDTOSCArgumentList *args);

/** @brief Object destructor.
@param[in] x Pointer to the instance to destroy */
extern void SDTOSCMessage_free(SDTOSCMessage *x);

/** @brief Gets the arguments of the message
@return The arguments */
extern SDTOSCArgumentList *SDTOSCMessage_getArguments(const SDTOSCMessage *x);

/** @brief Checks if the message has a top-level container name
@return The  The truth value of the check */
extern int SDTOSCMessage_hasContainer(const SDTOSCMessage *x);

/** @brief Gets the top-level container name of the address of the message
@return The container name */
extern char *SDTOSCMessage_getContainer(const SDTOSCMessage *x);

/** @brief Gets the message obtained by "opening the container", i.e. removing the first (non-root) node of the address.
@return The new message */
extern SDTOSCMessage *SDTOSCMessage_openContainer(const SDTOSCMessage *x);

/** @} */

/** @defgroup osc_methods OSC Methods
OSC containers and methods for SDT
@{ */

/** @brief Return codes for OSC methods */
typedef enum SDTOSCReturnCode {
  SDT_OSC_RETURN_OK,
  SDT_OSC_RETURN_MISSING_CONTAINER,
  SDT_OSC_RETURN_MISSING_METHOD,
  SDT_OSC_RETURN_NOT_IMPLEMENTED,
  SDT_OSC_RETURN_ARGUMENT_ERROR,
  SDT_OSC_RETURN_OBJECT_NOT_FOUND,
} SDTOSCReturnCode;

/** @brief OSC root for SDT methods
@return Return code */
extern SDTOSCReturnCode SDTOSCRoot(const SDTOSCMessage* x);

/** @brief The container of OSC methods for SDT Resonators
@return Return code */
extern SDTOSCReturnCode SDTOSCResonator(const SDTOSCMessage* x);

/** @brief OSC methods for setting modal frequencies of SDT Resonators
@return Return code */
extern SDTOSCReturnCode SDTOSCResonator_setFrequency(SDTResonator *x, const SDTOSCArgumentList *args);

/** @} */

/** @brief Log OSC return code information with a custom log function
@param[in] log Log function pointer
@param[in] r Return code
@param[in] m OSC message. Use a NULL pointer if it doesn't have to be printed. */
extern void SDTOSCLog(void (* log)(const char *, ...), SDTOSCReturnCode r, SDTOSCMessage *m);

#ifdef __cplusplus
};
#endif

#endif

/** @} */