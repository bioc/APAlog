% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/Tests.R
\name{pA_logit_pairwise}
\alias{pA_logit_pairwise}
\title{pA_logit_pairwise}
\usage{
pA_logit_pairwise(data, model, design = NULL, sample_ID = NULL)
}
\arguments{
\item{data}{Dataset containing poly A (pA) site read counts. This dataset must have a long shape, meaning that there should be only one
column containing read counts (and it MUST be named "count"). The first four columns must be called "transcript", "pA.site", "sample" and "count".
Thus, each row in \code{data} contains the read count for one pA - transcript - sample combination.
Other sample attributes beyond sample ID may be recorded in additional variables in this dataset, or provided separately through a design matrix
and a key variable (e.g. sample ID) connecting the \code{data} and \code{design} matrices.}

\item{model}{Regression model describing the dependence of pA site usage on sample attribute(s).}

\item{design}{(optional) Design matrix. A matrix describing sample attributes which can be used as predictors in the regression model.}

\item{sample_ID}{(optional) A key variable connecting the counts dataset (\code{data}) and the design matrix.}
}
\value{
Log ratios (called "Estimate", logistic regression coefficients) and p-values describing the effect of predictor(s) specified in the model on the usage
ratio of pairs of pA sites per trancript. Standard error and z score of estimates are also given.
}
\description{
Function to compare the usage of all pairs of poly sites of a transcript
}
\examples{
pA.toy2 <- APAlog::pA.toy2
pA_design <- APAlog::pA_design
fit2_pA <- pA_logit_pairwise(pA.toy2, pA.site~cell_line, pA_design, "sample")
}
