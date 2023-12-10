#' App Server Function
#'
#' @importFrom shiny onStop reactive renderPlot observeEvent div downloadButton downloadHandler
#' @importFrom rdstools log_inf
#'
#' @name app-server
NULL


#' @describeIn app-server server function for app
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
    r_plot_data <- reactive({
      build_data(faithful) |>
        save_data("plot_1")
    })

    r_plot_obj <- reactive({
      r_plot_data() |>
        build_plot(r_bin_count())
    })

    output$plot_1 <- shiny::renderPlot({
      rdstools::log_inf("<<==output==>> plot_1")
      r_plot_obj()
    })

    # Download report.html on action
    output$btn_dl <- shiny::downloadHandler(
      filename = function() {
        rdstools::log_inf("<<==output==>> btn_dl")
        paste0('my-report.', switch(
          input$dl_format,
          pdf = 'pdf',
          html = 'html',
          word = 'docx'
        ))
      },
      content = function(file) {
        w$show()
        w$update(html = waiter_html("Saving Plot"))
        save_plot(r_plot_obj(), r_bin_count(), "plot_1")
        Sys.sleep(2)

        w$update(html = waiter_html("Generating Report"))
        Sys.sleep(2)
        report_path <- generate_report(file)
        file.copy(report_path, file)

        w$hide()
      }
    )
  }
}


