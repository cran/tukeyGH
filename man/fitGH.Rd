% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/fitGH.R
\name{fitGH}
\alias{fitGH}
\title{Fit the Tukey's g-and-h distribution}
\usage{
fitGH(x, method = c("iinference", "quantile", "mle"), verbose = "vv")
}
\arguments{
\item{x}{data as a \code{numeric}.}

\item{method}{estimation method (partial string matching is allowed).
Indirect inference is adopted as default.}

\item{verbose}{function verbosity. Values \code{v}, \code{vv} and \code{vvv} are admitted,
whereas other values (such as \code{""} or \code{FALSE}) will make the function
silent.}
}
\value{
Object of class \code{fitGH}. Useful methods include:
\itemize{
\item \code{coef()} point estimates of parameters
\item \code{print()} short information about the object
\item \code{summary()} summary information about the estimation process
}
}
\description{
Fit the Tukey's g-and-h distribution on a dataset through various methods:
quantile estimator by \insertCite{hoaglin1985;textual}{tukeyGH}, indirect
inference \insertCite{bee2019a}{tukeyGH}, and maximum likelihood
\insertCite{bee2019b}{tukeyGH}.
}
\examples{
data("EPWS2014")

# Fit to EPWS2014 data through indirect inference
modII <- fitGH(EPWS2014)
summary(modII)

# Fit to EPWS2014 data through the quantile estimator
modQ <- fitGH(EPWS2014, method = "quantile")
summary(modQ)

\dontrun{

# Fit to EPWS2014 data through MLE (the computation time is much longer)
modMLE <- fitGH(EPWS2014, method = "mle")
summary(modMLE)
}

}
\references{
\insertAllCited{}
}
