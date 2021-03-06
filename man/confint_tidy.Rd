% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/utilities.R
\name{confint_tidy}
\alias{confint_tidy}
\title{Calculate confidence interval as a tidy data frame}
\usage{
confint_tidy(x, conf.level = 0.95, func = stats::confint, ...)
}
\arguments{
\item{x}{a model object for which \code{\link[=confint]{confint()}} can be calculated}

\item{conf.level}{confidence level}

\item{func}{A function to compute a confidence interval for \code{x}. Calling
\code{func(x, level = conf.level, ...)} must return an object coercibleto a
tibble. This dataframe like object should have to columns corresponding
the lower and upper bounds on the confidence interval.}

\item{...}{extra arguments passed on to \code{confint}}
}
\value{
A tibble with two columns: \code{conf.low} and \code{conf.high}.
}
\description{
Return a confidence interval as a tidy data frame. This directly wraps the
\code{\link[=confint]{confint()}} function, but ensures it follows broom conventions:
column names of \code{conf.low} and \code{conf.high}, and no row names.
}
\details{
\code{confint_tidy}
}
\seealso{
\link{confint}
}
