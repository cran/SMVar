\name{SMVar.paired}
\alias{SMVar.paired}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{ Structural model for variances with paired data }
\description{
  Function to detect differentially expressed genes when data are paired
}
\usage{
SMVar.paired(geneNumbers, logratio, fileexport = NULL, minrep = 2, method = "BH", threshold = 0.05)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{geneNumbers}{ Vector with gene names or dataframe which contains all information about spots on the chip }
  \item{logratio}{ matrix with one row by gene and one column by replicate giving the logratio }
  \item{fileexport}{ file to export the list of differentially expressed genes }
  \item{minrep}{ minimum number of replicates to take a gene into account, \code{minrep} must be higher than 2 }
  \item{method}{ method of multiple tests adjustment for p.values }
  \item{threshold}{ threshold of False Discovery Rate }
}
\details{
This function implements the structural model for variances described in (Jaffrezic et al., 2007).
 Data must be normalized before calling the function. Matrix \code{geneNumbers} must have one of
 the following formats: "matrix","data.frame","vector","character","numeric","integer".
}
\value{
  Only the number of differentially expressed genes is printed. 
If asked, the file giving the list of differentially expressed genes is created

If the user creates an object when calling the function (for example "Stat=SMVar.paired(...)")
 then Stat contains the information for all genes, is sorted by ascending p-values and
  \item{Stat$TestStat }{gives the test statistics as described in the paper }
  \item{Stat$StudentPValue}{ gives the raw p-values}
  \item{Stat$DegOfFreedom }{gives the number of degrees of freedom for the Student distribution for the test statistics}
  \item{Stat$LogRatio}{  gives the logratios}
  \item{Stat$AdjPValue}{gives the adjusted p-values}
}
\references{  F. Jaffrezic, Marot, G., Degrelle, S., Hue, I. and Foulley, J. L. (2007) A structural mixed model for variances in differential gene expression studies. Genetical Research (89) 19:25 
 }
\author{ Guillemette Marot  }
\note{ If the first column of the file geneNumbers contains identical names for two different spots,
 these two spots are only counted once if they are both differentially expressed.
By default, the correction for multiple testing is Benjamini Hochberg with a threshold of False Discovery Rate (FDR) of  5\%.
The FDR threshold can be changed, and it is also possible to choose the multiple test correction method 
("holm", "hochberg", "hommel", "bonferroni", "BH", "BY", "fdr", "none").
To see the references for these methods, use the R-help ?p.adjust.  
}
\examples{
library(SMVar)
data(Spleendata)
attach(Spleendata)
SMVar.paired(SpleenGeneId,SpleenLogRatio)
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{methods }
\keyword{models }% __ONLY ONE__ keyword per line

