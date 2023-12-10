## Functions here are global to all tests
##
## All helper-*.R files are sourced first followed by setup.R
##
compare_reports <- function(old, new) {
    old <- readLines(old, skipNul = FALSE, encoding = "UTF8")
    new <- readLines(new, skipNul = FALSE, encoding = "UTF8")
    pat <- 'src\\=\\"data\\:image\\/png\\;base64'
    old <- old[-1 * stringr::str_which(old, pat)]
    new <- new[-1 * stringr::str_which(new, pat)]
    identical(old, new)
}
