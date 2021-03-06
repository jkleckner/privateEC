% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/classification.R
\name{getImportanceScores}
\alias{getImportanceScores}
\title{Compute and return importance scores (Relief-F scores)}
\usage{
getImportanceScores(train.set = NULL, holdout.set = NULL,
  label = "phenos", imp.estimator = "ReliefFbestK", verbose = FALSE)
}
\arguments{
\item{train.set}{A training data frame with last column as class}

\item{holdout.set}{A holdout data frame with last column as class}

\item{label}{A character vector of the class variable column name}

\item{imp.estimator}{A character vector CORElearn attribute importance estimator}

\item{verbose}{A flag indicating whether verbose output be sent to stdout}
}
\value{
A list with two data frames representing the importance scores
(Relief-F scores) for the train and holdout data sets.
}
\description{
Compute and return importance scores (Relief-F scores)
}
