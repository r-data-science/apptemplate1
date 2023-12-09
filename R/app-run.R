 #' Run App
#'
#' Functions to run the package shiny app
#'
#' @name app-run
NULL


.appenv <- new.env()
.appenv$path_session_dir <- NULL


#' @param ... named args to pass to shinyApp's options parameter
#' @importFrom shiny shinyApp
#' @describeIn app-run returns app object for subsequent execution
#' @export
apptemplate1 <- function(...) {
  shiny::shinyApp(
    ui = app_ui(),
    server = app_server(),
    onStart = create_session_dir,
    options = list(...)
  )
}



