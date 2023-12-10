#' App Server Function
#'
#' @importFrom shiny onStop reactive renderPlot observeEvent div downloadButton downloadHandler
#' @importFrom shinyWidgets sendSweetAlert prettyRadioButtons
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

    r_bin_count <- shiny::reactive(input$bin_count)

    r_plot_data <- reactive({
      # This doesn't need to be in a reactive, but doing it
      # for illustrative purposes
      build_data(faithful) |>
        save_data("plot_1")
    })

    r_plot_obj <- reactive({
      build_plot(r_plot_data(), r_bin_count())
    })

    output$plot_1 <- shiny::renderPlot({
      rdstools::log_inf("+++ app event @-> render plot")
      r_plot_obj()
    })

    # On click, generate report
    shiny::observeEvent(input$btn_post, {
      rdstools::log_inf("+++ user action @-> create report")

      shinyWidgets::sendSweetAlert(
        title = "Report Format",
        session = session,
        text = shiny::div(
          shinyWidgets::prettyRadioButtons(
            inputId = "dl_format",
            label = NULL,
            width = "100%",
            choices = c("html", "pdf", "word"),
            selected = "html",
            inline = TRUE,
            status = "danger",
            fill = TRUE
          ),
          shiny::downloadButton("btn_dl", "Generate")
        ),
        showCloseButton = FALSE,
        closeOnClickOutside = TRUE,
        width = 600,
        btn_labels = NA,
        html = TRUE
      )
    })

    # Download report.html on action
    output$btn_dl <- shiny::downloadHandler(
      filename = function() {
        rdstools::log_inf("+++ user action @-> confirmed download")
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


