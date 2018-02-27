module Argtable.FFI

%include C "argtable3/argtable3.h"
%include C "argtable3/argtable3.c"
%include C "argtable_idris.h"
%link    C "argtable_idris.o"

%default partial
%access public export
