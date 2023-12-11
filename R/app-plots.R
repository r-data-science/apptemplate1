#' App Outputs
#'
#' Functions to generate and prepare outputs presented by the package app.
#'
#' @param pdata plot data
#' @param bin_count total count of bins used in plot
#' @param DT data to build plot data from
#' @param ptitle plot title
#' @param psubtitle plot subtitle
#' @param name name for plot or dataset for saving
#'
#' @import ggplot2
#' @import ggtext
#' @import rdstools
#' @importFrom stringr str_glue
#' @importFrom data.table copy
#'
#' @name app-plots
NULL

#' @describeIn app-plots provides the base theme for plots
.plot_theme <- function() {
  .colors <- get_app_colors()
  ggplot2::theme(
    axis.title = ggplot2::element_blank(),
    plot.title = ggtext::element_textbox(
      lineheight = 1.5
    ),
    plot.title.position = "plot",
    axis.text.x = ggtext::element_markdown(
      size = 12,
      colour = .colors$fg
    ),
    axis.text.y = ggtext::element_markdown(
      size = 12,
      colour = .colors$fg
    ),
    panel.background = ggplot2::element_rect(
      fill = .colors$bg,
      color = .colors$bg
    ),
    plot.background = ggplot2::element_rect(
      fill = .colors$bg,
      color = .colors$bg,
      linewidth = 0
    ),
    panel.grid.minor.y = ggplot2::element_blank(),
    panel.border = ggplot2::element_blank(),
    strip.background = ggplot2::element_blank(),
    strip.text = ggtext::element_textbox(
      size = 12,
      color = .colors$fg,
      fill = .colors$bg,
      box.color = .colors$fg,
      halign = 0.5,
      linewidth = .5,
      linetype = 1,
      r = ggplot2::unit(5, "pt"),
      width = ggplot2::unit(1, "npc"),
      padding = ggplot2::margin(2, 0, 1, 0),
      margin = ggplot2::margin(3, 3, 3, 3)
    )
  )
}


#' @describeIn app-plots Style the plot title/subtitle
.plot_title <- function(ptitle, psubtitle) {
  .colr <- get_app_colors()
  ggplot2::labs(
    title = stringr::str_glue(
      "<span style= 'font-size:16pt; color:{.colr$fg};'><b>{ptitle}</b></span>
        <br>
        <span style= 'font-size:13pt; color:{.colr$fg};'>*{psubtitle}*</span>
      <br>"
    ))
}


#' @describeIn app-plots build plot data with result of rdscore::restock_rec_ep
build_data <- function(DT) {
  pdata <- data.table::copy(DT) ## operate on cDT
  return(pdata)
}


#' @describeIn app-plots keeps plot data generated during session
save_data <- function(pdata, name = "pdata") {
  rdstools::log_inf("...Saving Plot Dataset...")
  app_d <- get_session_dir(error = TRUE)
  dpath <- fs::path(app_d, "output/plots/data")
  saveRDS(pdata, fs::path(dpath, paste0(name, ".Rds")))
  invisible(pdata)
}


#' @describeIn app-plots build list of plots that operate on the same dataset
build_plot <- function(pdata, bin_count) {
  rdstools::log_inf(stringr::str_glue("...Created Plot w/{bin_count} Bins..."))
  .colors <- get_app_colors()
  p <- ggplot2::ggplot(pdata) +
    ggplot2::geom_histogram(
      ggplot2::aes(get("waiting")),
      bins = bin_count,
      color = "white",
      fill = .colors$info
    ) +
    ggplot2::xlab('Waiting time until next eruption') +
    .plot_title("Histogram of Waiting Times", "Shown in Minutes") +
    .plot_theme()
  return(p)
}


#' @param p plot object
#' @param w width of plot png in units
#' @param h height of plot png in units
#' @param units units for plot png (defaults to "px")
#' @param dpi dpi for plot png (defaults to 125)
#' @param bg background for plot png (defaults to NULL)
#'
#' @describeIn app-plots Saving plots for report
save_plot <- function(p, bin_count, name = "plot_1",
                      h = 500, w = 1000,
                      units = "px", dpi = 150,
                      bg = NULL) {
  rdstools::log_inf("...Saving Plot PNG...")
  png_nam <- paste0(name, ".png")

  # Get app directory to save plot to
  app_d <- get_session_dir(error = TRUE)

  # Save plot as png
  outpath <- fs::path(app_d, "output/plots")
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
  # Save bins as well
  outfile <- fs::path(outpath, paste0(name, "-bins.Rds"))
  saveRDS(bin_count, outfile)

  invisible(p)
}
