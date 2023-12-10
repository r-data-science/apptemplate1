test_that("Testing Plot Functions", {
  create_session_dir()

  build_data(faithful) |>
    save_data("plot_1") |>
    build_plot(5) |>
    save_plot(5, "plot_1") |>
    ggplot2::is.ggplot() |>
    expect_true()

  get_session_dir() |>
    fs::path("output/plots/plot_1.png") |>
    fs::file_exists() |>
    expect_true()

  get_session_dir() |>
    fs::path("output/plots/plot_1-bins.Rds") |>
    fs::file_exists() |>
    expect_true()

  get_session_dir() |>
    fs::path("output/plots/data/plot_1.Rds") |>
    fs::file_exists() |>
    expect_true()

  clear_session_dir()
})
