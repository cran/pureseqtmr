% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/is_on_ci.R
\name{is_on_travis}
\alias{is_on_travis}
\title{Determines if the environment is Travis CI}
\usage{
is_on_travis()
}
\value{
\link{TRUE} if run on Travis CI, \link{FALSE} otherwise
}
\description{
Determines if the environment is Travis CI
}
\examples{
  if (is_on_travis()) {
    print("Running on Travis CI")
  }
}
\author{
Richèl J.C. Bilderbeek
}
