module Argtable.FFI

%include C "argtable3/argtable3.h"
%include C "argtable3/argtable3.c"
%include C "argtable_idris.h"
%link    C "argtable_idris.o"

%default partial
%access public export

data Argtable = MkArgtable Ptr

argtableNew : Int -> Int -> IO Argtable
argtableNew argn errors = do
  ptr <- foreign FFI_C "argtable_new" (Int -> Int -> IO Ptr) argn errors
  pure (MkArgtable ptr)

argtableFree : Argtable -> Int -> IO ()
argtableFree (MkArgtable ptr) argn =
  foreign FFI_C "argtable_free" (Ptr -> Int -> IO ()) ptr argn

setup : IO ()
setup = do
  argtable <- argtableNew 1 20
  argtableFree argtable 1
  pure ()
