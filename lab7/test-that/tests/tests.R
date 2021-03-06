x <- c(1, 2, 3, 4, 5)
y <- c(1, 2, 3, 4, NA)
z <- c(TRUE, FALSE, TRUE)
w <- letters[1:5]

# load the source code of the functions to be tested
source("../functions/range-value.R")

# context with one test that groups expectations
context("Test for range value") 

test_that("range works as expected", {
  x <- c(1, 2, 3, 4, 5)
  
  expect_equal(range_value(x), 4)
  expect_length(range_value(x), 1)
  expect_type(range_value(x), 'double')
})

test_that("range works as expected", {
  y <- c(1, 2, 3, 4, NA)
  
  expect_length(range_value(y), 1)
  expect_null(range_value(y))
})

test_that("range works as expected", {
  z <- c(TRUE, FALSE, TRUE)
  
  expect_length(range_value(z), 1)
  expect_type(range_value(z), 'integer')
  expect_type(range-value(z), 1L)
})

test_that("range works as expected", {
  w <- letters[1:5]
  
  expect_error(range_value(w), 'error')
})

test_that("missing works as expected", {
  x <- c(1, 2, 3, 4, 5)
  
  expect_length(missing-values(x), 1)
  expect_type(missing-values(x), 'double')
  expect_equal(missing-values(x), 0)
  expect_gt(missing-values(x), 0)
})

# After changing function range-value

test_that("range works as expected", {
  x <- c(1, 2, 3, 4, 5)
  
  expect_equal(range_value(x,na.rm=T), 4)
  expect_length(range_value(x,na.rm=T), 1)
  expect_type(range_value(x,na.rm=T), 'double')
})

test_that("range works as expected", {
  y <- c(1, 2, 3, 4, NA)
  
  expect_length(range_value(y,na.rm=T), 1)
  expect_null(range_value(y,na.rm=T))
})

test_that("range works as expected", {
  z <- c(TRUE, FALSE, TRUE)
  
  expect_length(range_value(z,na.rm=T), 1)
  expect_type(range_value(z,na.rm=T), 'integer')
  expect_type(range-value(z,na.rm=T), 1L)
})

test_that("range works as expected", {
  w <- letters[1:5]
  
  expect_error(range_value(w,na.rm=T), 'error')
})


