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
  .colors <- get_app_colors()
  shiny::fluidPage(
    theme = bslib::bs_theme(
      version = 5,
      bg = .colors$bg,
      fg = .colors$fg,
      primary = .colors$primary,
      secondary = .colors$secondary,
      success = .colors$success,
      info = .colors$info,
      warning = .colors$warning,
      danger = .colors$danger,
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
            fluidRow(
              column(
                width = 9,
                shinyWidgets::prettyRadioButtons(
                  inputId = "dl_format",
                  label = "Report Type",
                  width = "100%",
                  bigger = FALSE,
                  outline = TRUE,
                  choices = c("html", "pdf", "word"),
                  selected = "html",
                  inline = TRUE,
                  status = "danger",
                  fill = TRUE
                )
              ),
              column(
                width = 3,
                shiny::downloadButton("btn_dl", NULL)
              )
            ),
            theme = "material",
            placement = "bottom-end",
            padding = .5,
            maxWidth = 600
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
