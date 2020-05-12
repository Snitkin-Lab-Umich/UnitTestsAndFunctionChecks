# Hello, world!
#
# This is an example function named 'hello'
# which prints 'Hello, world!'.


#' Repeat the phrase hello world a given number of times
#'
#' @param times_to_print Integer, number of times to print "hello world"
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
  check_is_this_class(times_to_print, "integer")
  print(rep("Hello, world!", times_to_print))
}

add_vectors_check_class <- function(vec1, vec2){
  if (!(is_this_class(vec1, "numeric") |  is_this_class(vec1, "logical"))) {
    stop("Input vector 1 should be a numeric or logical")
  }
  if (!(is_this_class(vec2, "numeric") |  is_this_class(vec2, "logical"))) {
    stop("Input vector 2 should be a numeric or logical")
  }
  return(vec1 + vec2)
}

check_vec_length <- function(vec, expected_length){
  check_is_this_class(expected_length, "integer")
  if (is.null(length(vec)) | length(vec) != expected_length) {
    stop("Vector is not of expected length")
  }
}

check_equal <- function(num1, num2){
  check_is_this_class(num1, "numeric")
  check_is_this_class(num2, "numeric")
  if (num1 != num2) {
    stop("The two numbers are not equal")
  }
}

add_vectors_check_class_and_length <- function(vec1, vec2){
  if (!(is_this_class(vec1, "numeric") |  is_this_class(vec1, "logical"))) {
    stop("Input vector 1 incorrect class")
  }
  if (!(is_this_class(vec2, "numeric") |  is_this_class(vec2, "logical"))) {
    stop("Input vector 2 incorrect class")
  }
  check_equal(length(vec1), length(vec2))

  return(vec1 + vec2)
}
