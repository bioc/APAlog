% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/Tests.R
\name{volcano_plot}
\alias{volcano_plot}
\title{volcano_plot}
\usage{
volcano_plot(
  fit,
  x,
  xlab = "Ln fold change",
  y,
  ylab = "-Log10 FDR",
  title = "LMCN data, metastatic vs non-metastatic",
  titleLabSize = 12,
  border = "full",
  pCutoff = 0.001,
  FCcutoff = 1.5,
  xlim = c(-5, 5),
  ylim = c(0, 10)
)
}
\arguments{
\item{fit}{Output dataframe of the pA_logit_dev or pA_multi_logit function}

\item{x}{Name of the column in the dataframe that contains the log fold change}

\item{xlab}{Label of the column in the dataframe that contains the log fold change}

\item{y}{Name of the column in the dataframe that contains the corrected p-values}

\item{ylab}{Label of the column in the dataframe that contains the corrected p-values}

\item{title}{Title of the Volcano Plot}

\item{titleLabSize}{Size of the title of the volcano plot}

\item{border}{Width of the borders used}

\item{pCutoff}{Cutoff for the p-values}

\item{FCcutoff}{Cutoff for the log fold change values}

\item{xlim}{Limit of values on x-axis}

\item{ylim}{Limit of values on y-axis}
}
\value{
A volcano plot visualisation
}
\description{
Function to make the volcano plot from the p-values matrix
}
\details{
A visualisation of the volcano plot resulting from the p-values and log fold change
}
\examples{
fit1 <- pA_multi_logit(APAlog::pA.toy2, pA.site ~ cell_line, APAlog::pA_design, "sample", adj_method='fdr')

vplot <- volcano_plot(fit1, x='b_cell_lineMDA_sgHNRNPC', y='p_cell_lineMDA_sgHNRNPC', xlab = "Ln fold change", ylab = "-Log10 FDR",
title = "LMCN data, metastatic vs non-metastatic", titleLabSize = 12, border = "full",
pCutoff = 0.001, FCcutoff = 1.5, xlim = c(-5, 5), ylim = c(0, 10))
}
