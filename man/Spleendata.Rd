\name{Spleendata}
\alias{Spleendata}
\docType{data}
\title{ Spleendata }
\description{
Example dataset for paired data
}
\usage{data(Spleendata)}
\format{
  Spleendata is a list with 2 elements
\item{ SpleenGeneId}{Gene names)}
\item{ SpleenLogRatio}{ Matrix with 4360 rows and 6 columns with normalized log-ratio}
}
\source{
  Similar to the example dataset used in the package Varmixt
}
\references{
P. Delmar, Robin, S., Tronik-Le Roux S. and Daudin J.-J. (2005) Mixture model on the variance for the differential analysis of gene expression data, JRSS series C, 54(1), 31:50}
\examples{
data(Spleendata)
attach(Spleendata)
}
\keyword{datasets}
