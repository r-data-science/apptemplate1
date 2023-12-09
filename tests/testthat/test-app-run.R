test_that("Testing app function", {
  expect_s3_class(templateApp(), "shiny.appobj")
})
