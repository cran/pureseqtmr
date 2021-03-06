#' Determines if the environment is AppVeyor
#' @return \link{TRUE} if run on AppVeyor, \link{FALSE} otherwise
#' @author Richèl J.C. Bilderbeek
#' @examples
#'   if (is_on_appveyor()) {
#'     print("Running on AppVeyor")
#'   }
#' @export
is_on_appveyor <- function() {
  Sys.getenv("APPVEYOR") != "" # nolint internal function
}

#' Determines if the environment is Travis CI
#' @return \link{TRUE} if run on Travis CI, \link{FALSE} otherwise
#' @author Richèl J.C. Bilderbeek
#' @examples
#'   if (is_on_travis()) {
#'     print("Running on Travis CI")
#'   }
#' @export
is_on_travis <- function() {
  Sys.getenv("TRAVIS") != "" # nolint internal function
}

#' Determines if the environment is a continuous integration service
#' @return \link{TRUE} if run on AppVeyor or Travis CI, \link{FALSE} otherwise
#' @author Richèl J.C. Bilderbeek
#' @examples
#'   if (is_on_ci()) {
#'     print("Running on a continuous integration service")
#'   }
#' @export
is_on_ci <- function() {
  is_on_appveyor() || is_on_travis() # nolint internal function
}
