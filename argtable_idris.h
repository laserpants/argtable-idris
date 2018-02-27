#ifndef ARGTABLE_IDRIS_H
#define ARGTABLE_IDRIS_H

#include "argtable3/argtable3.h"

void **argtable_new (size_t argn, int errors);
void argtable_free (void **argtable, size_t argn);

#endif
