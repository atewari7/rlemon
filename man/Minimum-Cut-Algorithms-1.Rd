% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/RcppExports.R
\name{Minimum-Cut-Algorithms-1}
\alias{Minimum-Cut-Algorithms-1}
\alias{NagamochiIbarakiRunner}
\alias{HaoOrlinRunner}
\title{Minimum Cut Algorithms}
\usage{
NagamochiIbarakiRunner(arcSources, arcTargets, arcWeights, numNodes)

HaoOrlinRunner(arcSources, arcTargets, arcWeights, numNodes)
}
\arguments{
\item{arcSources}{Vector corresponding to the source nodes of a graph's edges}

\item{arcTargets}{Vector corresponding to the destination nodes of a graph's edges}

\item{arcWeights}{Vector corresponding to the weights of a graph's edges}

\item{numNodes}{The number of nodes in the graph}
}
\value{
A list containing three entries: 1) The value of the minimum cut in the graph, and 2) A list of nodes in the first partition, and 3) A list of nodes in the second partition.
}
\description{
`NagamochiIbarakiRunner` runs the Nagamochi-Ibaraki Algorithm to calculate the minimum cut.

`HaoOrlinRunner` runs the Hao-Orlin Algorithm to calculate the minimum cut.
}
