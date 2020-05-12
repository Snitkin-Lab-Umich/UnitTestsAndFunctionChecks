#' Repeat the phrase hello world a given number of times
#'
#' @param times_to_print Integer, number of times to print "hello world"
#'
#' @export
repeat_hello <- function(times_to_print){
  print(rep("Hello, world!", times_to_print))
}


#' Return elementwise sum of two vectors of equal length
#'
#' @param vec1 Numeric or logical vector
#' @param vec2 Numeric or logical vector
#'
#' @return Numeric or logical vector
#' @export
add_vectors <- function(vec1, vec2){
  return(vec1 + vec2)
}
