## Functions here are global to all tests
##
## All helper-*.R files are sourced first followed by setup.R
##
compare_reports <- function(old, new) {
    old <- readLines(old)
    new <- readLines(new)
    pat <- 'data\\:(application|image)'
    old <- stringr::str_trim(old[-1 * stringr::str_which(old, pat)])
    new <- stringr::str_trim(new[-1 * stringr::str_which(new, pat)])
    stringr::str_equal(
        stringr::str_flatten(stringr::str_remove_all(old, " ")),
        stringr::str_flatten(stringr::str_remove_all(new, " "))
    )
}
