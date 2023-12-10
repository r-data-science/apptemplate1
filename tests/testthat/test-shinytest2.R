library(shinytest2)

test_that("{shinytest2} Testing App", {
  app <- AppDriver$new(
    templateApp(),
    name = "app",
    variant = platform_variant(),
    seed = 121212,
    height = 757,
    width = 1239
  )
  app$expect_values()
  app$set_inputs(bin_count = 14)
  app$click("btn_param_drop")
  app$set_inputs(btn_param_drop_dropmenu = TRUE)
  app$expect_download("btn_dl")
  app$set_inputs(waiter_shown = TRUE,
                 allow_no_input_binding_ = TRUE,
                 priority_ = "event")
  app$set_inputs(waiter_hidden = TRUE,
                 allow_no_input_binding_ = TRUE,
                 priority_ = "event")
  app$set_inputs(btn_param_drop_dropmenu = FALSE,
                 wait_ = FALSE)
  app$stop()
})




