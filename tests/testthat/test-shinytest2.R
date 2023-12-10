library(shinytest2)

test_that("{shinytest2} Testing App", {

  #===========================================================
  app <- AppDriver$new(
    app_dir = "_app",
    width = 1200,
    height = 700,
    name = "app"
  )
  #===========================================================
  app$log_message("*****< Started App Driver >*****")
  app$wait_for_idle()

  #-------------
  app$log_message("<EXPECT> Initial Consistent Values on Start")
  app$expect_values()

  #-------------
  app$set_inputs(bin_count = 14)
  app$expect_values()

  #-------------
  app$click("btn_post")
  app$set_inputs(dl_format = "html", wait_ = FALSE)
  app$expect_download("btn_dl")

  #===========================================================
  app$log_message("*****< App Tests Complete >*****")
  app$stop()

  fs::dir_delete("_app/.app-session")
})




