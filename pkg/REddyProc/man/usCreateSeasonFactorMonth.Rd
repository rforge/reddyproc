\name{usCreateSeasonFactorMonth}
\alias{usCreateSeasonFactorMonth}
\title{usCreateSeasonFactorMonth}
\description{calculate factors to denote the season for uStar-Filtering by specifying starting months, with continuous seasons spanning year boundaries}
\usage{usCreateSeasonFactorMonth(dates, month = as.POSIXlt(dates)$mon + 
    1L, year = as.POSIXlt(dates)$year + 1900L, startMonth = c(3, 
    6, 9, 12))}
\arguments{
  \item{dates}{POSIXct vector of length of the data set to be filled, specifying the center-time of each record}
  \item{month}{integer (1-12) vector of length of the data set to be filled, specifying the month for each record}
  \item{year}{integer vector of length of the data set to be filled, specifying the year}
  \item{startMonth}{integer vector specifying the starting month for each season, counting from one.
Default is (Dez,Jan,Feb)(Mar,April,May)(June,July,August),(Sept,Okt,Nov)}
}
\details{If Jan is not a starting month, then the first months of each year will be 
part of the last period in the year.
E.g. with the default the fourth period of the first year consists of Jan,Feb,Dec.

REddyProc internally works with a timestamp 15 minutes after the start of each half hour.
When providing the \code{dates} argument, user may shift the start time by \code{dates=myDataset$DateTime+15*60}}
\value{Integer vector length(dates), with each unique value representing one season}

\author{TW
(Department for Biogeochemical Integration at MPI-BGC, Jena, Germany)}



\seealso{\code{\link{usCreateSeasonFactorMonthWithinYear}}, 
\code{\link{usCreateSeasonFactorYday}}, 
\code{\link{usCreateSeasonFactorYdayYear}}}

