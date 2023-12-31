% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/app-plots.R
\name{app-plots}
\alias{app-plots}
\alias{.plot_theme}
\alias{.plot_title}
\alias{build_data}
\alias{save_data}
\alias{build_plot}
\alias{save_plot}
\title{App Outputs}
\usage{
.plot_theme()

.plot_title(ptitle, psubtitle)

build_data(DT)

save_data(pdata, name = "pdata")

build_plot(pdata, bin_count)

save_plot(
  p,
  bin_count,
  name = "plot_1",
  h = 500,
  w = 1000,
  units = "px",
  dpi = 150,
  bg = NULL
)
}
\arguments{
\item{ptitle}{plot title}

\item{psubtitle}{plot subtitle}

\item{DT}{data to build plot data from}

\item{pdata}{plot data}

\item{name}{name for plot or dataset for saving}

\item{bin_count}{total count of bins used in plot}

\item{p}{plot object}

\item{h}{height of plot png in units}

\item{w}{width of plot png in units}

\item{units}{units for plot png (defaults to "px")}

\item{dpi}{dpi for plot png (defaults to 125)}

\item{bg}{background for plot png (defaults to NULL)}
}
\description{
Functions to generate and prepare outputs presented by the package app.
}
\section{Functions}{
\itemize{
\item \code{.plot_theme()}: provides the base theme for plots

\item \code{.plot_title()}: Style the plot title/subtitle

\item \code{build_data()}: build plot data with result of rdscore::restock_rec_ep

\item \code{save_data()}: keeps plot data generated during session

\item \code{build_plot()}: build list of plots that operate on the same dataset

\item \code{save_plot()}: Saving plots for report

}}
