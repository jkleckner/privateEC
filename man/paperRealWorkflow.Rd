% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/workflow.R
\name{paperRealWorkflow}
\alias{paperRealWorkflow}
\title{Runs the four comparison algorithms on the passed correlation matrix and phenotypes.
Returns a data frame of run results for each.}
\usage{
paperRealWorkflow(real.data = NULL, label = NULL, update.freq = 50,
  verbose = FALSE)
}
\arguments{
\item{real.data}{A matrix subject by region-pair correlations augmented with class label}

\item{label}{A character vector class label from columns of corr,mat}

\item{update.freq}{A integer for the number of steps before update}

\item{verbose}{A flag indicating whether verbose output be sent to stdout}
}
\value{
A list containing:
\describe{
  \item{run.results}{data frame of run results of each sim type}
  \item{elapsed}{total elapsed time}
}
}
\description{
Runs the four comparison algorithms on the passed correlation matrix and phenotypes.
Returns a data frame of run results for each.
}
\examples{
  data(rsfMRIcorrMDD)
  real.result <- paperRealWorkflow(real.data = rsfMRIcorrMDD[, 2900:ncol(rsfMRIcorrMDD)],
                                   label = "phenos",
                                   update.freq = 50,
                                   verbose = FALSE)
}
\seealso{
The workflow consists of the sequence:
\code{\link{privateEC}}
\code{\link{originalThresholdout}}
\code{\link{privateRF}}
\code{\link{standardRF}} and
\code{\link{compileResults}}. A comparison analysis with simulated data
is in \code{\link{paperSimWorkflow}}.

Other workflows: \code{\link{compileResults}},
  \code{\link{paperSimWorkflow}}
}
