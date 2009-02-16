\name{ApoAIdata}
\alias{ApoAIdata}
\docType{data}
\title{ ApoAIdata }
\description{ 
Example dataset for unpaired data
}
\usage{data(ApoAIdata)}
\format{
  ApoAIdata is a list with 3 elements
\describe{
  \item{ApoAIGeneId}{ vector of fictive gene names)}
  \item{ApoAICond1}{ matrix with 6226 rows and 8 columns with normalized normal mice measurements}
  \item{ApoAICond2}{ matrix with 6226 rows and 8 columns with normalized KO mice measurements}
 }
}
\source{
  Similar to the example dataset used in the package Varmixt
}
\references{
 M.J. Callow, S. Dudoit, E.L. Gong, T.P. Speed, and E.M. Rubin. Microarray expression profiling identifies genes with altered expression in hdl-deficien mice. Genome Res., 10(12) : 2022-9, 2000
}
\examples{
data(ApoAIdata)
attach(ApoAIdata)
}
\keyword{datasets}
