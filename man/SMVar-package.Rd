\name{SMVar-package}
\alias{SMVar}
\docType{package}
\title{ Structural Model for Variances  }
\description{
Package containing moderated t-tests to detect differentially expressed genes for paired and unpaired data}
\details{
\tabular{ll}{
Package: \tab SMVar\cr
Type: \tab Package\cr
Version: \tab 1.3.3\cr
Date: \tab 2011-08-03\cr
License: \tab GPL \cr
}
SMVar.unpaired and SMVar.paired are the most important functions. 
}
\author{
Guillemette Marot <guillemette.marot@inria.fr>
}
\references{
F. Jaffrezic, Marot, G., Degrelle, S., Hue, I. and Foulley, J. L. (2007) A structural mixed model for variances in differential gene expression studies. Genetical Research (89) 19:25 
 }
\keyword{ package }
\examples{
library(SMVar)
data(ApoAIdata)
attach(ApoAIdata)
SMVar.unpaired(ApoAIGeneId,list(ApoAICond1,ApoAICond2))
}


