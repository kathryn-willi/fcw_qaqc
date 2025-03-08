% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/add_malfunction_flag.R
\name{add_malfunction_flag}
\alias{add_malfunction_flag}
\title{Add malfunction flags to a data frame based on field notes and HydroVu.}
\usage{
add_malfunction_flag(df, malfunction_records)
}
\arguments{
\item{df}{A data frame with a \code{flag} column.}

\item{malfunction_records}{The malfunction records pulled from mWater}
}
\value{
A data frame with a \code{flag} column that has been updated with the
'sensor malfunction' flag.
}
\description{
This function adds the 'sensor malfunction' flag to a data frame by the dates,
sites, and parameters that members of the lab know contain erroneous data due
to sensor malfunctions. Note that this flag is used in two instances: first
when removing erroneous data from our statistics calculations and again during
the actual flagging step in the QAQC pipeline.
}
\seealso{
\code{\link[=grab_mWater_malfunction_notes]{grab_mWater_malfunction_notes()}}
}
