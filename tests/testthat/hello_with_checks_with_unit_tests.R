testthat::test_that("repeat_hello works when given an interger input", {
  repeat_hello(10)
})

testthat::test_that("repeat_hello gives error when given a non-interger input", {
  repeat_hello(FALSE)
  repeat_hello(matrix(1:10, 1, 1))
  repeat_hello("hello")
})

