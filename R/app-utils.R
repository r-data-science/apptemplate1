#' App Utils
#'
#' Functions required to execute and facililate an application user session.
#'
#' @import rdstools
#' @import fs
#'
#' @name app-utils
NULL


#' @param session shiny session object
#'
#' @importFrom shiny getDefaultReactiveDomain
#' @importFrom waiter Waiter
#'
#' @describeIn app-utils create a new waiter object
new_waiter <- function(session = NULL) {
  if (is.null(session))
    shiny::getDefaultReactiveDomain()
  waiter::Waiter$new(
    html = waiter_html("Initializing..."),
    color = get_app_colors()$bg
  )
}

#' @param msg message for waiter screen
#'
#' @importFrom shiny tagList br
#' @importFrom waiter spin_pulsar
#'
#' @describeIn app-utils get html for waiter progress page
waiter_html <- function(msg) {
  shiny::tagList(waiter::spin_pulsar(), shiny::br(), msg)
}


#' @param file file name for report download passed from app
#'
#' @importFrom rmarkdown render pdf_document html_document word_document
#'
#' @describeIn app-utils Generate report and return download link
generate_report <- function(file = "report.html") {
  rdstools::log_inf("...Rendering Report...")
  app_dir  <- get_session_dir(error = TRUE)
  rmd_path <- fs::path(app_dir, "output/report.Rmd")
  out_dir  <- fs::path(app_dir, "www")
  rdstools::log_inf("-----> Input File: ./output/report.Rmd")
  rdstools::log_inf("-----> Render Dir: ./www/")
  x <- rmarkdown::render(
    input = rmd_path,
    output_file = file,
    output_dir = out_dir,
    output_format = switch(
      fs::path_ext(file),
      "pdf" = rmarkdown::pdf_document(),
      "html" = rmarkdown::html_document(),
      "docx" = rmarkdown::word_document()
    ),
    clean = TRUE,
    run_pandoc = TRUE,
    output_options = "self-contained",
    encoding = 'UTF-8'
  )
  rdstools::log_suc("...Render Complete...")
  return(x)
}


#' @describeIn app-utils returns TRUE if called on CI
is_ci <- function() {
  isTRUE(as.logical(Sys.getenv("CI", "false")))
}


#' @describeIn app-utils returns TRUE if called while testing
is_testing <- function() {
  identical(Sys.getenv("TESTTHAT"), "true")
}


#' @describeIn app-utils Set Plot colors
get_app_colors <- function() {
  list(
    bg = "#041E39",
    fg = "#E0ECF9",
    primary    = "#187dd4",
    secondary  = "#ED9100",
    success    = "#00A651",
    info       = "#fff573",
    warning    = "#7d3be8",
    danger     = "#DB14BF"
  )
}


#' @param error When session NF, FALSE (default) returns NULL, else throw error
#' @describeIn app-utils creates and returns app dir path
get_session_dir <- function(error = FALSE) {
  app_d <- .appenv$path_session_dir
  if (is.null(app_d) && error)
    stop("No Session Dir Found", call. = FALSE)
  return(app_d)
}


#' @describeIn app-utils Run and Publishing Functions
create_session_dir <- function() {
  rdstools::log_inf("...Creating Session Directory...")

  # if testing, use wkdir as path to session dir
  .appenv$path_session_dir <- fs::path_temp(".app-session")
  if (is_testing())
    .appenv$path_session_dir <- ".app-session"

  app_d <- fs::dir_create(get_session_dir())
  rdstools::log_inf(paste0("-----> ", app_d))
  fs::dir_create(app_d, "www")
  fs::dir_create(app_d, "output", c("plots/data"))

  # Copy report markdown from package to session dir
  fs::path_package("apptemplate1", "docs/template.Rmd") |>
    readLines() |>
    writeLines(fs::path(app_d, "output/report.Rmd"))

  cat("\n\n")
  cat("**************\n")
  fs::dir_tree(app_d)
  cat("**************\n")
  invisible(app_d)
}


#' @describeIn app-utils Run and Publishing Functions
clear_session_dir <- function() {
  app_d <- get_session_dir()
  if (is.null(app_d)) {
    rdstools::log_wrn("...No Session Dir Found...")
    invisible(FALSE)
  } else {
    fs::dir_delete(app_d)
    .appenv$path_session_dir <- NULL
    rdstools::log_suc("...Cleared Session Directory...")
    invisible(TRUE)
  }
}



