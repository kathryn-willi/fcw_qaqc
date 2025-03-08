% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/add_frozen_flag.R
\name{add_frozen_flag}
\alias{add_frozen_flag}
\title{Add a flag if the water temperature is freezing.}
\usage{
add_frozen_flag(df)
}
\arguments{
\item{df}{A data frame with a \code{flag} column.}
}
\value{
A data frame with a \code{flag} column that has been updated with the
'frozen' flag.
}
\description{
A function designed to append the 'frozen' flag to a row if the value
in the \code{mean} column is less than or equal to 0.
}
\examples{
add_frozen_flag(df = all_data_flagged$`archery-Actual Conductivity`)
add_frozen_flag(df = all_data_flagged$`boxelder-Temperature`)

}
\seealso{
\code{\link[=flag_all_data]{flag_all_data()}}
}
