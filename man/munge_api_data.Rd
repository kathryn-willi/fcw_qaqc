% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/munge_api_data.R
\name{munge_api_data}
\alias{munge_api_data}
\title{Process raw API data for water quality monitoring workflow}
\usage{
munge_api_data(api_path, network, summarize_interval = "15 minutes")
}
\arguments{
\item{api_path}{Character string specifying the directory path containing the
raw CSV files downloaded from the HydroVu API.}

\item{network}{Character string indicating which monitoring network to process.
Options include "CSU", "FCW" (Fort Collins Watershed), or "all". Different
networks may have different processing requirements.}

\item{summarize_interval}{Character string specifying the time interval to
round timestamps to. Default is "15 minutes". Accepts any interval format
compatible with lubridate::round_date().}
}
\value{
A dataframe containing processed water quality monitoring data with
standardized columns:
\itemize{
\item site: Standardized site name (lowercase, no spaces)
\item DT: Original timestamp (MST timezone)
\item DT_round: Rounded timestamp for consistent time intervals
\item DT_join: Character representation of rounded timestamp for joining
\item parameter: Measurement type (e.g., "Temperature", "DO")
\item value: Measured value
\item units: Measurement units (e.g., "°C", "mg/L")
}
}
\description{
Transforms raw CSV files downloaded from the HydroVu API into a standardized
format suitable for further quality control processing. This function handles
data from multiple monitoring networks, applies site name standardization,
performs timezone conversion, and manages special cases where monitoring
equipment was relocated between sites. It serves as a crucial preprocessing
step that bridges the gap between raw API data and the structured format
required by downstream quality control functions.
}
\examples{
# Process data for FCW network with 15-minute intervals
fcw_data <- munge_api_data(api_path = "data/api",
                         network = "FCW",
                         summarize_interval = "15 minutes")

}
\seealso{
\code{\link[=api_puller]{api_puller()}}

\code{\link[=tidy_api_data]{tidy_api_data()}}
}
