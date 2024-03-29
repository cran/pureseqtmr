% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/calc_distance_to_tmh_center_from_topology.R
\name{calc_distance_to_tmh_center_from_topology}
\alias{calc_distance_to_tmh_center_from_topology}
\title{Calculate the the distance for each amino acid to the center
of the TMH}
\usage{
calc_distance_to_tmh_center_from_topology(topology)
}
\arguments{
\item{topology}{the topology as a \link[tibble]{tibble}
with the columns 'name' and 'topology',
where the 'name' column hold all the proteins' names,
and 'topology' contains the respective topologies as strings.}
}
\value{
a \link[tibble]{tibble} with the columns 'name'
and 'position' and 'distance_to_tmh_center'
}
\description{
Calculate the the distance for each amino acid to the center
of the TMH
}
\author{
Richèl J.C. Bilderbeek
}
