% Generated by roxygen2 (4.0.2): do not edit by hand
\name{do_boot}
\alias{do_boot}
\title{Perform a bootstrap analysis on diversity statistics}
\usage{
do_boot(tab, n, ...)
}
\arguments{
\item{tab}{a table produced from the \pkg{poppr} function \code{\link[poppr]{mlg.table}}. MLGs in columns and populations in rows}

\item{n}{an integer > 0 specifying the number of bootstrap replicates to perform (corresponds to \code{R} in the function \code{\link[boot]{boot}}.}

\item{...}{other parameters passed on to \code{\link[boot]{boot}}.}
}
\value{
a list of objects of class "boot".
}
\description{
Perform a bootstrap analysis on diversity statistics
}
\examples{
library(poppr)
data(Pinf)
tab <- mlg.table(Pinf, bar = FALSE)
do_boot(tab, 10L)
\dontrun{
# This can be done in a parallel fasion (OSX uses "multicore", Windows uses "snow")
system.time(do_boot(tab, 10000L, parallel = "multicore", ncpus = 4L))
system.time(do_boot(tab, 10000L))
}
}
\author{
Zhian N. Kamvar
}
\seealso{
\code{\link{boot_ci}}
}

