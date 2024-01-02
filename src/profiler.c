#include <R.h>
#include <Rinternals.h>
#include "gperftools/profiler.h"

SEXP rnng_profiler_start(SEXP path) {
  ProfilerStart(CHAR(STRING_ELT(path, 0)));
  return R_NilValue;
}

SEXP rnng_profiler_stop() {
  ProfilerStop();
  return R_NilValue;
}
