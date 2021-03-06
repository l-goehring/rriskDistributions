\name{rriskFitdist.cont}
\alias{rriskFitdist.cont}
\title{Fitting univariate distributions by maximum likelihood or by matching moments}
\usage{
  rriskFitdist.cont(data, distr, method = c("mle", "mme"),
    start, chisqbreaks, meancount,...)
}
\arguments{
  \item{data}{A numerical vector, data to be fitted.}

  \item{distr}{A character string \code{name} naming a
  distribution for which the corresponding density function
  \code{dname}, the corresponding distribution function
  \code{pname} and the corresponding quantile function must
  be defined, or directly the density function.}

  \item{method}{A character string coding for the fitting
  method: "mle" for the maximum likelihood estimation and
  "mme" for the matching moment estimation.}

  \item{start}{A named list giving the initial values of
  parameters of the named distribution. This argument will
  not be taken into account if \code{method="mme"}, and may
  be omitted for some distributions for which reasonable
  starting values are computed if \code{method="mle"}.}

  \item{chisqbreaks}{A numerical vector defining the breaks
  of the cell used to compute the chi-square statistic. If
  omitted, these breaks are automatically computed from the
  data in order to reach roughly the same number of
  observations per cell, roughly equal to the argument
  \code{meancount}, or slightly more if there are some
  ties.}

  \item{meancount}{The mean number of observations per cell
  expected for the definition of the breaks of the cells
  used to compute the chi-squared statistic.}

  \item{...}{further arguments to be passed to generic
  function, or to the function \code{rriskMLEdist}, in
  order to control the optimization method.}
}
\value{
  \code{rriskFitdist.cont} returns a list containing 19
  items with following fitting results:
  \item{\code{estimate}}{numeric, a single value or a
  vector containing estimated parameters.}
  \item{\code{method}}{the character string representing
  the used fitting method ("mle" or "mme").}
  \item{\code{sd}}{the estimated standard errors or
  \code{NULL} in case of the "mme" method.}
  \item{\code{cor}}{the estimated correlation matrix or
  \code{NULL} in case of the "mme" method.}
  \item{\code{loglik}}{the log-likelihood or \code{NULL} in
  case of the "mme" method.} \item{\code{aic}}{the Akaike
  information criterion or \code{NULL} in case of the "mme"
  method.} \item{\code{bic}}{the BIC or SBC (Schwarz
  Bayesian criterion) or \code{NULL} in case of the "mme"
  method.} \item{\code{n}}{the length of the data set.}
  \item{\code{data}}{the data set.}
  \item{\code{distname}}{the name of the estimated
  distribution.} \item{\code{chisq}}{the Chi-squared
  statistic or \code{NULL}, if not computed.}
  \item{\code{chisqbreaks}}{breaks used to define cells in
  the chi-square statistic.}
  \item{\code{chisqpvalue}}{p-value of the chi-square
  statistic or \code{NULL}, if not computed.}
  \item{\code{chisqdf}}{degree of freedom of the chi-square
  distribution or \code{NULL}, if not computed.}
  \item{\code{chisqtable}}{a table with observed and
  theoretical counts used for the Chi-squared
  calculations.} \item{\code{ad}}{the Anderson-Darling
  statistic or \code{NULL}, if not computed.}
  \item{\code{adtest}}{the decision of the Anderson-Darling
  test or \code{NULL}, if not computed.}
  \item{\code{ks}}{the Kolmogorov-Smirnov statistic or
  \code{NULL}, if not computed.} \item{\code{kstest}}{the
  decision of the Kolmogorov-Smirnov test or \code{NULL},
  if not computed.}
}
\description{
  Fits a univariate distribution by maximum likelihood or
  by matching moments.
}
\details{
  This function is an alias of the function \code{fitdist}
  from the package \pkg{fitdistrplus} (Version 0.1-2). The
  original function was extended to fitting additional
  distributions. The following continuous distributions can
  be fitted by this function: normal, lognormal, logistic,
  exponential, F, Student's t, Beta, Cauchy, Weibull,
  Gamma. \cr \cr For more details see the assistance page
  of the function \code{fitdist} from the package
  \pkg{fitdistrplus}. \cr \cr This function is not intended
  to be called directly but is internally called in
  \code{useFitdist}.
}
\examples{
\donttest{
set.seed(1)
x<-rnorm(5000,mean=10,sd=5)
rriskFitdist.cont(x,"norm")
rriskFitdist.cont(x,"t")}
}
\author{
  Matthias Greiner \email{matthias.greiner@bfr.bund.de}
  (BfR), \cr Kristin Tolksdorf
  \email{kristin.tolksdorf@bfr.bund.de} (BfR), \cr
  Katharina Schueller \email{schueller@stat-up.de}
  (\acronym{STAT-UP} Statistical Consulting), \cr Natalia
  Belgorodski \email{belgorodski@stat-up.de}
  (\acronym{STAT-UP} Statistical Consulting) \cr
  Marie-Laure Delignette-Muller (coauthor of the package
  \pkg{fitdistrplus}) \cr Christophe Dutang (coauthor of
  the package \pkg{fitdistrplus})
}
\keyword{fitdistrplus}

