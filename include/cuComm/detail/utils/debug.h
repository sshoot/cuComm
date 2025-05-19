// IWYU pragma: private, include cuComm/cuComm.h

#ifndef CUCOMM_DETAIL_DEBUG_UTILS_H_
#define CUCOMM_DETAIL_DEBUG_UTILS_H_

#ifdef DEBUG
#include <cstdio>  // IWYU pragma: keep
#define DEBUG_PRINT(expression, format) \
  do {                                  \
    printf(#expression ": ");           \
    printf(format, expression);         \
    printf("\n");                       \
  } while (0)
#else
#define DEBUG_PRINT(expression, format)
#endif

#endif /* CUCOMM_DETAIL_DEBUG_UTILS_H_ */
