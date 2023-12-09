#' Ui elements of Template App
#'
#' @importFrom shiny fluidPage br column fluidRow HTML icon plotOutput
#' @importFrom shinyWidgets panel noUiSliderInput wNumbFormat dropMenu actionBttn
#' @importFrom waiter useWaiter
#' @importFrom bslib bs_theme
#' @importFrom shinycssloaders withSpinner
#'
#' @name app-ui
NULL


#' @describeIn app-ui UI function for app
app_ui <- function() {
  shiny::fluidPage(
    theme = bslib::bs_theme(
      version = 5,
      bg = "#041E39",
      fg = "#E0ECF9",
      primary = "#187dd4",
      secondary = "#ED9100",
      success = "#00A651",
      info = "#fff573",
      warning = "#7d3be8",
      danger = "#DB14BF",
      bootswatch = "materia"
    ),
    waiter::useWaiter(),
    shiny::br(),
    shinyWidgets::panel(
      shiny::column(width = 12, shiny::fluidRow(
        shinyWidgets::noUiSliderInput(
          inputId = "bin_count",
          label = shiny::HTML(
            "<b><i>Select Bins</i></b><br><i>(Total Count)</i>"
          ),
          min = 1,
          max = 30,
          direction = "ltr",
          step = 1,
          padding = 0,
          margin = 0,
          value = 5,
          color = c("#a98bfb"),
          format = shinyWidgets::wNumbFormat(decimals = 0),
          tooltips = TRUE,
          behaviour = c("tap", "drag"),
          orientation = "horizontal",
          height = "22px",
          width = "100%",
          inline = TRUE
        )
      )),
      footer = shiny::fluidRow(
        shiny::column(
          offset = 11,
          width = 1,
          shinyWidgets::dropMenu(
            shinyWidgets::actionBttn(
              inputId = "btn_param_drop",
              icon = shiny::icon("gear"),
              color = "primary",
              size = "xs",
              style = "jelly",
              block = TRUE
            ),
            shinyWidgets::actionBttn(
              inputId = "btn_post",
              color = "warning",
              label = "Create Report",
              size = "xs",
              style = "minimal",
              block = TRUE
            ),
            shinyWidgets::actionBttn(
              inputId = "btn_reset",
              label = "Reset to Default",
              size = "xs",
              style = "fill"
            ),
            placement = "bottom-end",
            padding = 1,
            maxWidth = "600px"
          )
        )
      )
    ),
    shiny::fluidRow(
      shiny::column(
        width = 12,
        shinyWidgets::panel(
          shinycssloaders::withSpinner(
            shiny::plotOutput("plot_1", width = "100%", height = "675px")
          ),
          footer = "Plot 1"
        )
      )
    )
  )
}

