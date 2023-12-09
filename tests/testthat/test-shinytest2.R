library(shinytest2)


test_that("{shinytest2} Testing App", {

  #===========================================================
  app <- AppDriver$new(
    app_dir = templateApp(),
    name = "app"
  )
  #===========================================================
  app$log_message("*****< Started App Driver >*****")

  #-------------
  app$log_message("<EXPECT> Initial Consistent Values on Start")
  app$expect_values()


  #===========================================================
  app$log_message("*****< App Tests Complete >*****")
  app$stop()
})



