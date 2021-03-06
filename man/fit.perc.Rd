\name{fit.perc}
\alias{fit.perc}
\title{Choosing distribution by given quantiles}
\usage{
  fit.perc(p=c(0.025,0.5,0.975),q=qnorm(p),show.output=FALSE,
    tolPlot=0.1,tolConv=0.001,fit.weights=rep(1,length(p)))
}
\arguments{
  \item{p}{numerical vector of probabilities.}

  \item{q}{numerical vector of quantiles.}

  \item{show.output}{logical, if \code{TRUE} the output of
  the fitting functions \code{get.distribution.par} will be
  shown.}

  \item{tolPlot}{single positive numerical value giving a
  tolerance for plotting graphical diagnostics.  If the
  sums of the differences between the distribution
  percentiles and the given percentiles are smaller than
  this value, the distribution will be plotted.}

  \item{tolConv}{positive numerical value, the absolute
  convergence tolerance for reaching zero.}

  \item{fit.weights}{numerical vector of the same length as
  a probabilities vector \code{p} containing positive
  values for weighting quantiles. By default all quantiles
  will be weighted by 1.}
}
\value{
  Returns a named list containing a chosen distribution,
  its estimated parameters and the data on which the
  estimation is based.
}
\description{
  This function provides a GUI for choosing a most
  appropriate continuous distribution for known quantiles.
}
\details{
  The argument \code{tolPlot} defines a tolerance for
  plotting graphical diagnostics. If the sums of the
  differences between the percentiles of the estimated
  distribution and the given percentiles are smaller than
  this value, the distribution will be plotted. \cr \cr The
  items of the probability vector \code{p} should lie
  between 0 and 1.
}
\note{
  This function is used for defining a Monte-Carlo random
  variate item (\code{mcrv}) in the \code{rrisk} project.
}
\examples{
\donttest{
chosenDistr1<-fit.perc()
chosenDistr1

chosenDistr2<-fit.perc(tolPlot=5)
chosenDistr2

chosenDistr3<-fit.perc(p=c(0.3,0.8,0.9),q=c(10,20,40))
chosenDistr3

chosenDistr4<-fit.perc(p=c(0.3,0.8,0.9),q=c(10,30,40))
chosenDistr4

chosenDistr5<-fit.perc(p=c(0.3,0.8,0.9),q=c(10,30,40),tolPlot=10)
chosenDistr5

# Example with fittes pert distribution
p<-c(0.025,0.5,0.6,0.975)
q<-round(qpert(p=p,min=0,mode=3,max=10,shape=5),digits=2)
chosenDistr6<-fit.perc(p=p,q=q,tolPlot=10)
chosenDistr6}
}
\author{
  Matthias Greiner \email{matthias.greiner@bfr.bund.de}
  (BfR), \cr Kristin Tolksdorf
  \email{kristin.tolksdorf@bfr.bund.de} (BfR), \cr
  Katharina Schueller \email{schueller@stat-up.de}
  (\acronym{STAT-UP} Statistical Consulting), \cr Natalia
  Belgorodski \email{belgorodski@stat-up.de}
  (\acronym{STAT-UP} Statistical Consulting)
}
\keyword{gui}

