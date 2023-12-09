#' App Outputs
#'
#' Functions to generate and prepare outputs presented by the package app.
#'
#' @param pdata plot data
#' @param bin_count total count of bins used in plot
#' @param data data to build plot data from
#' @param ptitle plot title
#' @param psubtitle plot subtitle
#'
#' @import ggplot2
#' @import ggtext
#' @importFrom stringr str_glue
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
.plot_title_style <- function(ptitle, psubtitle) {
  .colors <- get_app_colors()
  ggplot2::labs(
    title = stringr::str_glue(
      "<span style= 'font-size:16pt; color:{.colors$fg};'><b>{ptitle}</b></span><br>
        <span style= 'font-size:13pt; color:{.colors$fg};'>{psubtitle}</span><br>"
    ))
}


#' @describeIn app-plots diagnostic plot
.build_plot <- function(pdata, bin_count) {
  rdstools::log_inf("...Creating Plot")
  ggplot2::ggplot(pdata) +
    ggplot2::geom_histogram(
      aes_string("waiting"),
      bins = bin_count,
      color = "white",
      fill = "navy"
    ) +
    ggplot2::xlab('Waiting time to next eruption (in mins)') +
    .plot_title_style("Histogram of waiting times", "In Minutes") +
    .plot_theme()
}

#' @describeIn app-plots diagnostic plot
.build_data <- function(data) {
  identity(data)
}
