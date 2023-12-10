library(shinytest2)

test_that("{shinytest2} Testing App", {

  # Start app driver
  app <- AppDriver$new(
    templateApp(),
    name = "app",
    variant = platform_variant(),
    seed = 121212,
    expect_values_screenshot_args = FALSE,
    height = 757,
    width = 1239
  )

  # Snapshot values
  expect_snapshot_value(
    variant = platform_variant(),
    style = "json2",
    tolerance = 0.1, {
      ll <- app$get_values()
      ll$output$plot_1$src <- NULL
      ll
    })

  # app$get_values(output = TRUE, hash_images = TRUE) |>
  #   expect_snapshot_value(
  #     variant = platform_variant(),
  #     style = "json2",
  #     tolerance = 0.1
  #   )

  # Set slider input
  app$set_inputs(bin_count = 14)

  # Click to open dropdown
  app$click("btn_param_drop")
  app$set_inputs(btn_param_drop_dropmenu = TRUE)

  # Download rendered report
  app$expect_download("btn_dl", compare = compare_reports)

  # Waiter shows and hides
  app$set_inputs(waiter_shown = TRUE,
                 allow_no_input_binding_ = TRUE,
                 priority_ = "event")
  app$set_inputs(waiter_hidden = TRUE,
                 allow_no_input_binding_ = TRUE,
                 priority_ = "event")

  # close dropdown
  app$set_inputs(btn_param_drop_dropmenu = FALSE, wait_ = FALSE)
  app$stop()
})




