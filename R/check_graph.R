##' Check graph for common issues.
##'
##' @param arcSources Arc sources
##' @param arcTargets Arc targets
##' @param arcCapacities Arc capacities
##' @param arcCosts Arc costs
##' @param nodeSupplies Node supplies
##' @param numNodes Number of nodes
##' @return TRUE if no errors are found.
##' @export
check_graph <- function(arcSources, arcTargets, arcCapacities, arcCosts, nodeSupplies, numNodes) {
  # Checking that arc number is consistent
  if (length(arcSources) != length(arcTargets) |
      length(arcSources) != length(arcCapacities) |
      length(arcSources) != length(arcCosts) |
        length(arcSources) != length(arcCapacities)) {
    stop("Inconsistent number of arcs across Sources/Targets/Capacities/Costs")
  }

  # Checking that node identifiers are integers
  if (!all(arcSources == floor(arcSources)) |
      !all(arcTargets == floor(arcTargets))) {
    stop("Nodes must be integers")
  }

  invisible(TRUE) # if it passes all checks. `invisible` instead of `return` avoids printing anything out
}