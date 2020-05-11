#' Repeat the phrase hello world a given number of times
#'
#' @param times_to_print Integer, number of times to print "hello world"
#'
#' @export
repeat_hello <- function(times_to_print) {
  print(rep("Hello, world!", times_to_print))
}
