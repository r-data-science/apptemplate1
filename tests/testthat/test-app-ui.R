test_that("Testing App UI Function", {
  expect_s3_class(app_ui(), "shiny.tag.list")
})
