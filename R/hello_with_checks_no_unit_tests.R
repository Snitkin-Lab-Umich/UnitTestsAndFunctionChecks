# Hello, world!
#
# This is an example function named 'hello'
# which prints 'Hello, world!'.


#' Repeat the phrase hello world a given number of times
#'
#' @export
repeat_hello_check_A <- function(times_to_print) {
  if (!is.call(times_to_print) != "integer") {
    stop("User must provide an integer input")
  }
  print(rep("Hello, world!", times_to_print))
}

#' Tests if an input object has the specified class.
#'
#' @param obj Any R object.
#' @param current_class String. Name of the expected class of the R object.
#'
#' @return is_this_class: Logical.
#' @noRd
is_this_class <- function(obj, current_class){
  if (length(current_class) != 1) {
    stop("Current_class must have a length of 1")
  }
  if (!methods::is(current_class, "character")) {
    stop("Current_class is expected to be a string describing a class")
  }
  r_classes <- c("character",
                 "numeric",
                 "integer",
                 "logical",
                 "complex",
                 "phylo",
                 "DNAbin",
                 "phyDat",
                 "matrix",
                 "data.frame",
                 "factor",
                 "vcfR",
                 "dist",
                 "list")
  if (!(current_class %in% r_classes)) {
    stop("current_class is expected to be a R class")
  }

  is_this_class <- methods::is(obj, current_class)
  return(is_this_class)
}

#' Checks if an object is of the expected R class.
#'
#' Doesn't return anything. Gives error if the object is not of the expected R
#' class.
#'
#' @param obj Any R object.
#' @param current_class Character string. Name of R class
#' @noRd
check_is_this_class <- function(obj, current_class){
  class_log <- is_this_class(obj, current_class)
  if (class_log != TRUE) {
    stop(paste("Input must be a", current_class))
  }
}

repeat_hello_check_B <- function(times_to_print) {
  if (!isClass(times_to_print) != "integer") {
    stop("User must provide an integer input")
  }
  print(rep("Hello, world!", times_to_print))
}
