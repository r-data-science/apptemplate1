 #' Run App
#'
#' Functions to run the package shiny app
#'
#' @import shiny
#' @importFrom rdstools log_inf
#' @importFrom shinyWidgets panel noUiSliderInput wNumbFormat dropMenu actionBttn
#' @importFrom waiter useWaiter
#' @importFrom bslib bs_theme
#' @importFrom shinycssloaders withSpinner
#'
#' @name app-run
NULL


.appenv <- new.env()
.appenv$path_session_dir <- NULL


#' @describeIn app-run returns app object for subsequent execution
#' @export
templateApp <- function() {
  shiny::shinyApp(
    ui = app_ui(),
    server = app_server(),
    onStart = create_session_dir
  )
}


#' @describeIn app-run server function for app
app_server <- function() {
  function(input, output, session) {
    w <- new_waiter()
    create_session_dir()
    shiny::onStop(clear_session_dir, session)

    r_bin_count <- shiny::reactive({
      rdstools::log_inf("<<==input===>> bin_count")
      input$bin_count
    })

    # Putting this in reactive for illustrative purposes
    r_plot_data <- shiny::reactive({
      get("faithful") |>
        build_data() |>
        save_data("plot_1")
    })

    r_plot_obj <- shiny::reactive({
      build_plot(r_plot_data(), r_bin_count())
    })

    output$plot_1 <- shiny::renderPlot({
      rdstools::log_inf("<<==output==>> plot_1")
      r_plot_obj()
    })

    # Download report.html on action
    output$btn_dl <- shiny::downloadHandler(
      filename = function() {
        rdstools::log_inf("<<==output==>> btn_dl")
        paste0(
          'my-report.',
          switch(input$dl_format, pdf = 'pdf', html = 'html', word = 'docx')
        )
      },
      content = function(file) {
        w$show()

        w$update(html = waiter_html("Saving Plot"))
        save_plot(r_plot_obj(), r_bin_count(), "plot_1")
        Sys.sleep(2)

        w$update(html = waiter_html("Generating Report"))
        report_path <- generate_report(file)
        Sys.sleep(2)

        file.copy(report_path, file)
        w$hide()
      }
    )
  }
}

#' @describeIn app-run UI function for app
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
          label = shiny::HTML("<b><i>Select Bins</i></b><br><i>(Total Count)</i>"),
          min = 1,
          max = 30,
          direction = "ltr",
          step = 1,
          padding = 0,
          margin = 0,
          value = 5,
          color = "#a98bfb",
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
            shiny::fluidRow(
              shiny::column(
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
              shiny::column(
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
          )
        )
      )
    )
  )
}



