run_all_hello <- function() {
  repeat_hello(1)
  repeat_hello(2)
  repeat_hello("one")


  add_vectors(1:3, 1:3)
  add_vectors(c(TRUE, TRUE, FALSE), c(TRUE, FALSE, FALSE))
  add_vectors(1:3, 1:6)

  add_vectors_check_class(1:3, 1:3)
  add_vectors_check_class(c(TRUE, TRUE, FALSE), c(TRUE, FALSE, FALSE))
  add_vectors_check_class(1:3, 1:6)

  add_vectors_check_class_and_length(1:3, 1:3)
  add_vectors_check_class_and_length(c(TRUE, TRUE, FALSE), c(TRUE, FALSE, FALSE))
  add_vectors_check_class_and_length(1:3, 1:6)


  repeat_hello_check_A(1)
  repeat_hello_check_A(1)
  repeat_hello_check_A("one")

  repeat_hello_check_B(1)
  repeat_hello_check_B(1)
  repeat_hello_check_B("one")

}
