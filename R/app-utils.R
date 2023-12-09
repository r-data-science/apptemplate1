#' App Utils
#'
#' Functions required to execute and facililate an application user session.
#'
#' @importFrom waiter Waiter spin_pulsar
#' @importFrom shiny tagList br getDefaultReactiveDomain
#' @importFrom rdstools log_inf log_wrn
#' @importFrom fs path path_temp dir_create dir_tree dir_delete
#'
#' @name app-utils
NULL


#' @param session shiny session object
#' @describeIn app-utils create a new waiter object
new_waiter <- function(session = NULL) {
  if (is.null(session)) {
    shiny::getDefaultReactiveDomain()
  }
  waiter::Waiter$new(
    html = waiter_html("Initializing..."),
    color = get_app_colors()$bg
  )
}


#' @param msg message for waiter screen
#' @describeIn app-utils get html for waiter progress page
waiter_html <- function(msg) {
  shiny::tagList(waiter::spin_pulsar(), shiny::br(), msg)
}


#' @param file file name for report download passed from app
#' @describeIn app-utils Generate report and return download link
generate_report <- function(file) {
  rdstools::log_inf("...Rendering Report")
  # report_path <- fs::path(get_session_dir(), "output/report.Rmd")

  # rdstools::log_inf(paste("...File Input: ", report_path))
  # rdstools::log_inf(paste("...File Output: ", file))

  # if (is_testing() & !shiny::isRunning()) {
  #   templ_path <- fs::path_wd("_docs/test-template.Rmd")
  # } else {
  #   templ_path <- fs::path_package("apptemplate1", "docs", "template.Rmd")
  # }

  # rdstools::log_inf(past e0("Read Template From: ", templ_path))
  # rdstools::log_inf(paste0("Write Rmarkdown To: ", report_path))
  # writeLines(readLines(templ_path), report_path)

  outpath <- fs::path(get_session_dir(), file)
  rdstools::log_inf(paste0("Render Report To: ", outpath))

  # x <- rmarkdown::render(
  #   input = report_path,
  #   output_file = file,
  #   output_dir = get_session_dir(),
  #   output_format = switch(
  #     fs::path_ext(file),
  #     "pdf" = rmarkdown::pdf_document(),
  #     "html" = rmarkdown::html_document(),
  #     "docx" = rmarkdown::word_document()
  #   ),
  #   clean = TRUE,
  #   run_pandoc = TRUE,
  #   output_options = "self-contained",
  #   encoding = 'UTF-8'
  # )
  #
  # rdstools::log_suc("...File Created for Download...", x)
  # return(x)
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
  if (is.null(app_d) & error)
    stop("No session directory detected", call. = FALSE)
  return(app_d)
}


#' @describeIn app-utils Run and Publishing Functions
create_session_dir <- function() {
  rdstools::log_inf("...Creating session directory")
  if (is_testing()) {
    .appenv$path_session_dir <- ".app-session"
  } else {
    .appenv$path_session_dir <- fs::path_temp(".app-session")
  }
  app_d <- fs::dir_create(get_session_dir())
  rdstools::log_inf(paste0("...Output Dir -> ", app_d))
  fs::dir_create(get_session_dir(), "www")
  fs::dir_create(get_session_dir(), "output", c("plots/data"))
  cat("\n\n")
  cat("**************\n")
  fs::dir_tree(app_d)
  cat("**************\n")
  invisible(app_d)
}


#' @describeIn app-utils Run and Publishing Functions
clear_session_dir <- function() {
  if (getOption("shiny.testmode", FALSE)) {
    rdstools::log_inf("...[Test Mode] not deleting session directory")
    .appenv$path_session_dir <- NULL
    invisible(TRUE)
  } else {
    app_d <- get_session_dir()
    if (is.null(app_d)) {
      rdstools::log_wrn("No session directory to clear")
      invisible(FALSE)
    } else {
      rdstools::log_suc("...Cleared Session Outputs")
      fs::dir_delete(app_d)
      .appenv$path_session_dir <- NULL
      invisible(TRUE)
    }
  }
}



