% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/mod_patient_search_module.R
\name{patient_search_ui}
\alias{patient_search_ui}
\alias{patient_search_logic}
\title{Patient Search Module}
\usage{
patient_search_ui(id)

patient_search_logic(
  input,
  output,
  session,
  table_map,
  db_connection,
  disconnect,
  prev_sub,
  next_sub,
  selected_sub,
  parent
)
}
\arguments{
\item{id}{The namespace id for the UI output}

\item{input}{internal}

\item{output}{internal}

\item{session}{internal}

\item{table_map}{tibble containing a the cdm that most closely matches the user's database and a map of standard tables to user tables}

\item{db_connection}{Connection info received from the database setup module}

\item{disconnect}{disconnect button press}

\item{prev_sub}{previous subject button press}

\item{next_sub}{next subject button press}

\item{selected_sub}{the selected subject}

\item{parent}{the parent environment of this module}
}
\description{
This module will render the datatable on the 'Patient Search' tab containing all patients in the cohort. The selected patient in the DT is kept in sync with the 'Chart Review' tab.
}
\keyword{internal}
