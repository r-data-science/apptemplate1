test_that("Testing App Server Function", {
  expect_true(is.function(app_server()))
})

test_that("Testing App UI Function", {
  expect_s3_class(app_ui(), "shiny.tag.list")
})

test_that("Testing app function", {
  expect_s3_class(templateApp(), "shiny.appobj")
})

