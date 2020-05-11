# Hello, world!
#
# This is an example function named 'hello'
# which prints 'Hello, world!'.


#' Repeat the phrase hello world a given number of times
#'
#' @export
repeat_hello <- function(times_to_print) {
  print(rep("Hello, world!", times_to_print))
}
