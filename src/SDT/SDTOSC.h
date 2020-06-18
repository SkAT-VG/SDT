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

/** @brief Data structure representing an OSC address. */
typedef struct SDTOSCAddress SDTOSCAddress;

/** @brief Object constructor.
@param[in] s String OSC address to parse. Null pointer is returned if string doesn't start with '/'
@return Pointer to the new instance */
extern SDTOSCAddress *SDTOSCAddress_new(char *s);

/** @brief Object destructor.
@param[in] x Pointer to the instance to destroy */
extern void SDTOSCAddress_free(SDTOSCAddress *x);

/** @brief Convert to string an OSC address
@return String OSC address */
extern char *SDTOSCAddress_str(SDTOSCAddress *x);

/** @brief Gets the number of nodes in the OSC address
@return Depth of OSC address */
extern unsigned int SDTOSCAddress_getDepth(SDTOSCAddress *x);

/** @brief Gets the container or method name at the specified depth in the address
@param[in] node_idx Depth of the node (container / method) in the OSC address. Index 0 is for the first (non-root) node.
@return Node name as a C-string */
extern char *SDTOSCAddress_getNode(SDTOSCAddress *x, unsigned int node_idx);

#ifdef __cplusplus
};
#endif

#endif

/** @} */