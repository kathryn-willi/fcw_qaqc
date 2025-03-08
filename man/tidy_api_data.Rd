% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/tidy_api_data.R
\name{tidy_api_data}
\alias{tidy_api_data}
\title{Summarize site parameter data from the API}
\usage{
tidy_api_data(api_data, summarize_interval = "15 minutes")
}
\arguments{
\item{api_data}{A dataframe with the munged API data.}

\item{summarize_interval}{At what time interval the user would like the data set to be aggregated and rounded to. Default is 15 minutes}

\item{site_arg}{A site name.}

\item{parameter_arg}{A parameter name.}
}
\value{
A dataframe with summary statistics for a given site parameter data frame
}
\description{
A function that summarizes and joins site parameter data from the API
}
