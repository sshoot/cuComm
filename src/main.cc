#include <cuComm/utils.h>

#include "entry.h"

int main(int argv, char *argc[]) {
  DEBUG_PRINT(argv, "%d");
  DEBUG_PRINT(argc, "%p");

  return entry();

  // return 0;
}
