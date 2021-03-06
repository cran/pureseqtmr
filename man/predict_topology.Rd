% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/predict_topology.R
\name{predict_topology}
\alias{predict_topology}
\title{Predict the topology of a proteome}
\usage{
predict_topology(
  fasta_filename,
  folder_name = get_default_pureseqtm_folder(),
  topology_filename = tempfile(fileext = ".top")
)
}
\arguments{
\item{fasta_filename}{path to a FASTA file}

\item{folder_name}{superfolder of PureseqTM.
The superfolder's name is \code{/home/[user_name]/.local/share}
by default, as can be obtained by
\link{get_default_pureseqtm_folder}}

\item{topology_filename}{name of the file to save a protein's
topology to}
}
\value{
a \link[tibble]{tibble} with the columns 'name'
and 'topology', where the 'name' column hold all the proteins' names,
and 'topology' contains all respective topologies.
}
\description{
Predict the topology of a proteome
}
\examples{
if (is_pureseqtm_installed()) {
  fasta_filename <- get_example_filename("1bhaA.fasta")
  predict_topology(fasta_filename)
}
}
\author{
Richèl J.C. Bilderbeek
}
