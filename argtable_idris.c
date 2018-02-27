#include "argtable_idris.h"
#include <stdlib.h>
#include <idris_rts.h>

void **
argtable_new (size_t argn, int errors)
{
    void **argtable;

    argtable = malloc ((argn + 1) * sizeof (void *));
    argtable[argn] = arg_end(errors);

    return argtable;
}

void
argtable_free (void **argtable, size_t argn)
{
    arg_freetable (argtable, argn);
}
