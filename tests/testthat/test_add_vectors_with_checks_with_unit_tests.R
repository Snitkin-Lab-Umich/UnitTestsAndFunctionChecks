testthat::test_that("add_vectors_check_class_and_length works when given interger inputs", {
  expect_equal(add_vectors_check_class_and_length(1:20, 1:20), 2 * 1:20)
})

testthat::test_that("add_vectors_check_class_and_length works when given logical inputs", {
  expect_equal(
    add_vectors_check_class_and_length(rep(TRUE, 10),
                                       c(rep(TRUE, 5), rep(FALSE, 5))),
    c(rep(2, 5), rep(1, 5)))
})

testthat::test_that("add_vectors_check_class_and_length gives error when given inputs of different lengths", {
  expect_error(add_vectors_check_class_and_length(1:5, 1:20))
  expect_error(add_vectors_check_class_and_length(TRUE, c(TRUE, FALSE)))
})

testthat::test_that("add_vectors_check_class_and_length gives error when given incorrect class", {
  expect_error(add_vectors_check_class_and_length(matrix(1:10, 1, 10), 1:20))
  expect_error(add_vectors_check_class_and_length(1:20, "foobar"))
})

testthat::test_that("add_vectors_check_class_and_length doesn't give error when given incorrect class", {
  # This is wrong on purpose
  expect_silent(add_vectors_check_class_and_length(matrix(1:10, 1, 10), 1:20))
})



