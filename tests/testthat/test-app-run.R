test_that("Testing app function", {
  expect_s3_class(apptemplate1(), "shiny.appobj")
})
