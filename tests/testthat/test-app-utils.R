test_that("Testing Waiter", {
  w <- new_waiter()
  expect_s3_class(w, "waiter")
  html <- waiter_html("hello")
  expect_s3_class(html, "shiny.tag.list")
})
