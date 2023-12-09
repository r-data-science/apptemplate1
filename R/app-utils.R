#' App Utils
#'
#' Functions required to execute and facililate an application user session
#'
#' @param session shiny session object
#' @param msg message for waiter screen
#' @param pdata plot data
#'
#' @importFrom waiter Waiter spin_pulsar
#' @importFrom shiny tagList br getDefaultReactiveDomain
#' @importFrom rdstools log_inf log_wrn
#' @importFrom fs path path_temp dir_create dir_tree dir_delete
#' @importFrom ggplot2 ggsave
#'
#' @name app-utils
NULL

globalVariables(c("faithful"))

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


#' @describeIn app-utils get html for waiter progress page
waiter_html <- function(msg) {
  shiny::tagList(waiter::spin_pulsar(), shiny::br(), msg)
}



#' @param file file name for report download passed from app
#'
#' @describeIn app-utils Generate report and return download link
generate_report <- function(file) {
  # rdstools::log_inf(paste("...Rendering Report"))
  # report_path <- fs::path(get_session_dir(), "output/report.Rmd")
  #
  # rdstools::log_inf(paste("...File Input: ", report_path))
  # rdstools::log_inf(paste("...File Output: ", file))
  #
  # if (is_testing() & !shiny::isRunning()) {
  #   templ_path <- fs::path_wd("_docs/test-template.Rmd")
  # } else {
  #   templ_path <- fs::path_package("rdsapps", "docs", "template.Rmd")
  # }
  #
  # rdstools::log_inf(paste0("Read Template From: ", templ_path))
  # rdstools::log_inf(paste0("Write Rmarkdown To: ", report_path))
  # writeLines(readLines(templ_path), report_path)
  #
  # outpath <- fs::path(get_session_dir(), file)
  # rdstools::log_inf(paste0("Render Report To: ", outpath))
  #
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


#' @param DT data to build plot data from
#' @param fn_data function that takes DT and returns plot dataset
#'
#' @describeIn app-utils build plot data with result of rdscore::restock_rec_ep
build_plot_data <- function(DT, fn_data) {
  pdata <- fn_data(DT) ## operate on cDT
  return(pdata)
}


#' @describeIn app-utils keeps plot data generated during session
save_plot_data <- function(pdata) {
  rdstools::log_inf("...Saving Plot Datasets")
  dpath <- fs::path(get_session_dir(), "output/plots/data")
  rdstools::log_inf(paste0("...Save Path: ", dpath))
  saveRDS(pdata, fs::path(dpath, "pdata.Rds"))
  invisible(pdata)
}


#' @param fn_plot function that takes pdata and returns plot object
#' @param ... additional arguments to pass to fn_plot
#'
#' @describeIn app-utils build list of plots that operate on the same dataset
build_plot_obj <- function(pdata, fn_plot, ...) {
  rdstools::log_inf("...Building Plot")
  p <- fn_plot(pdata, ...)
  return(p)
}


#' @param p plot object
#' @param pnam name of plot for saving
#' @param w width of plot png in units
#' @param h height of plot png in units
#' @param units units for plot png (defaults to "px")
#' @param dpi dpi for plot png (defaults to 125)
#' @param bg background for plot png (defaults to NULL)
#'
#' @describeIn app-utils Saving plots for report
save_plot_png <- function(p, pnam, w, h, units = "px", dpi = 125, bg = NULL) {
  rdstools::log_inf(paste0("...Saving Plot PNG"))
  png_nam <- paste0(pnam, ".png")
  outpath <- fs::path(get_session_dir(), "output/plots", png_nam)
  rdstools::log_inf(paste0("...Save Path: ", outpath))
  ggplot2::ggsave(
    filename = png_nam,
    plot = p,
    path = outpath,
    width = w,
    height = h,
    units = units,
    dpi = dpi,
    bg = bg
  )
  invisible(p)
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


#' @describeIn app-utils creates and returns app dir path
get_session_dir <- function() {
  .appenv$path_session_dir
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



