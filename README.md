# apptemplate1

<!-- badges: start -->

[![R-CMD-check](https://github.com/r-data-science/apptemplate1/actions/workflows/R-CMD-check.yaml/badge.svg?branch=main)](https://github.com/r-data-science/apptemplate1/actions/workflows/R-CMD-check.yaml)
[![test-coverage](https://github.com/r-data-science/apptemplate1/actions/workflows/test-coverage.yaml/badge.svg?branch=main)](https://github.com/r-data-science/apptemplate1/actions/workflows/test-coverage.yaml)
[![codecov](https://codecov.io/gh/r-data-science/apptemplate1/graph/badge.svg?token=KPUgJxBDR8)](https://codecov.io/gh/r-data-science/apptemplate1)

<!-- badges: end -->

## Shiny App via R Package

This is a working demo of a single shiny app fully wrapped into an R
package. It is intended to be used as a comprehensive example, demo, and
template for a shiny app that has full test coverage with workflows that
include end-to-end shiny app unit tests as well as automated deployment
via docker container.

#### Single-App R Package Benefits

-   All latest functions, ui/server code, and dependencies for a single
    app are accessible after installing or updating a single R package
-   All functionality of the app, including simulated user-interactions,
    as well as load-testing, can be included in the unit and coverage
    tests executed by a standard R package check
-   Workflow for automated CI/Deployment of app is simplified to that of
    a standard R package. App can be deployed as a docker image as part
    of workflow that checks, tests, and builds the package

#### Additional Resources

-   To unit tests this shiny app, including simulated user actions and
    snapshots, I utilize the package shinytest2 in conjuction with
    snapshot expectations from package testthat
-   For additional information on how to load test shiny apps, both
    locally as well as a deployed app, see shinyloadtest for more info

For an example of a multi-app R package, see **here** **(LINK)**.

## Package Structure

```         
R/
├──app-run.R........................App server/ui code + function to launch app 
├──app-plots.R......................App functionality to build and save plot/data 
└──app-utils.R......................All other functions needed during app session

tests/testthat/
├── test-app-run.R..................End-to-end app and user-interactions tests 
├── test-app-plots.R................Isolated unit testing of app plot functions
├── test-app-utils.R................Isolated unit testing of other app functions
├── _snaps..........................Snapshots are saved here in testing
└── _tools..........................Contains helpers for debugging
    ├── dl-artifacts.sh.............Download gh actions artifacts by id
    └── list-artifacts.sh...........List all gh actions artifacts for repo

inst/ 
├── docker..........................Docker context used in CI/Deploy Workflow
│   ├── Dockerfile..................Dockerfile to build image of deployed app 
│   └── Rprofile.site...............Copied to image on docker build
└── docs
    └── template.Rmd................Template Report used by app on user action

.github/workflows/
├── R-CMD-check.yaml................Test app via package build/check steps
└── test-coverage.yaml..............Test and report coverage of app codebase
```

------------------------------------------------------------------------

## Install & Run App

#### In R Session

This package exports a single R function that launches the packaged
shiny app:

``` r
# remotes::install_github("r-data-science/apptemplate1")
apptemplate1::templateApp()
```

#### In Docker Container

To run this as a docker container, perform the following bash commands:

```{bash}
sudo docker pull bfatemi/apptemplate1:latest
sudo docker run --name demo-app \
  -p 3939:3939 --rm -dt bfatemi/apptemplate1:latest
```

------------------------------------------------------------------------

Proprietary - Do Not Distribute
