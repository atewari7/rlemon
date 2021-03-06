% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/RcppExports.R
\name{Maximum-Flow-Algorithms-2}
\alias{Maximum-Flow-Algorithms-2}
\alias{CirculationRunner}
\title{Maximum Flow Algorithms - Network Circulation}
\usage{
CirculationRunner(
  arcSources,
  arcTargets,
  arcLowerBound,
  arcUpperBound,
  nodeSupplies,
  numNodes
)
}
\arguments{
\item{arcSources}{Vector corresponding to the source nodes of a graph's edges}

\item{arcTargets}{Vector corresponding to the destination nodes of a graph's edges}

\item{arcLowerBound}{Vector corresponding to the lower-bound capacities of nodes of a graph's edges}

\item{arcUpperBound}{Vector corresponding to the upper-bound capacities of nodes of a graph's edges}

\item{nodeSupplies}{Vector corresponding to the supplies of each node of the graph.}

\item{numNodes}{The number of nodes in the graph}
}
\value{
A list containing two entries: 1) A list corresponding to the flows of arcs in the graph, and 2) A list of the graph's barrier nodes.
}
\description{
`CirculationRunner` runs the Circulation Algorithm to calculate the maximum flow.
}
