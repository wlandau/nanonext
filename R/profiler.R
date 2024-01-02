#' @title Start the `gperftools` profiler.
#' @export
#' @description Start the `gperftools` profiler.
#' @return `NULL` (invisibly).
#' @param path Character of length 1 with the file path to the profiling samples.
profiler_start <- function(path) {
  stopifnot(all(is.character(path)))
  stopifnot(all(length(path) == 1L))
  stopifnot(!anyNA(path))
  stopifnot(all(nzchar(path)))
  .Call(rnng_profiler_start, path = path, PACKAGE = "nanonext")
  invisible()
}

#' @title Stop the `gperftools` profiler.
#' @export
#' @description Stop the `gperftools` profiler.
#' @return `NULL` (invisibly).
profiler_stop <- function() {
  .Call(rnng_profiler_stop, PACKAGE = "nanonext")
  invisible()
}
