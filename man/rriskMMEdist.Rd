\name{rriskMMEdist}
\alias{rriskMMEdist}
\title{Fitting univariate distributions by matching moments}
\usage{
  rriskMMEdist(data, distr)
}
\arguments{
  \item{data}{a numerical vector.}

  \item{distr}{A character string "name" naming a
  distribution or directly the density function
  \code{dname}. The estimated values of the distribution
  parameters are provided only for the following
  distributions : "norm", "lnorm", "exp", "pois", "gamma",
  "logis", "nbinom" , "geom", "beta" and "unif".}
}
\value{
  \code{rriskMMEdist} returns the named parameter or a
  named vector of parameters.
}
\description{
  Fits a univariate distribution by matching moments.
}
\details{
  This function is an alias of the function \code{mmedist}
  from the package \pkg{fitdistrplus} (Version 0.1-2). The
  original function was extended to fitting additional
  distributions. Parameter of the following distribution
  families can be estimated in this function: normal,
  lognormal, exponential, Poisson, gamma, logistic,
  negative binomial, geometric, Beta and continuous
  univariate. \cr \cr For more details see the assistance
  page of the function \code{mmedist} from the package
  \pkg{fitdistrplus}. \cr \cr This function is not intended
  to be called directly but is internally called in
  \code{rriskFitdist.cont}.
}
\examples{
\donttest{
# Continuous distributions
set.seed(1)
x1<-rnorm(500,mean=2, sd=0.7)
rriskMMEdist(x1,"norm")
rriskMMEdist(x1,"lnorm")
rriskMMEdist(x1,"exp")
rriskMMEdist(x1,"gamma")
rriskMMEdist(x1,"logis")
rriskMMEdist(x1,"beta")
rriskMMEdist(x1,"unif")

# Discrete distributions
set.seed(2)
x2<-rpois(500,lambda=3)
rriskMMEdist(x2,"pois")
rriskMMEdist(x2,"nbinom")
rriskMMEdist(x2,"geom")}
}
\author{
  Matthias Greiner \email{matthias.greiner@bfr.bund.de}
  (BfR), \cr Kristin Tolksdorf
  \email{kristin.tolksdorf@bfr.bund.de} (BfR), \cr
  Katharina Schueller \email{schueller@stat-up.de}
  (\acronym{STAT-UP} Statistical Consulting), \cr Natalia
  Belgorodski \email{belgorodski@stat-up.de}
  (\acronym{STAT-UP} Statistical Consulting), \cr
  Marie-Laure Delignette-Muller (coauthor of the package
  \pkg{fitdistrplus}), \cr Christophe Dutang (coauthor of
  the package \pkg{fitdistrplus})
}
\keyword{fitdistrplus}

