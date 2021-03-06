% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/mod_patient_chart_module.R
\name{omop_chart_review_ui}
\alias{omop_chart_review_ui}
\alias{omop_chart_review_logic}
\alias{mimic_chart_review_ui}
\alias{mimic_chart_review_logic}
\alias{chart_review_ui}
\alias{chart_review_ui_logic}
\title{Patient Chart Module}
\usage{
omop_chart_review_ui(id)

omop_chart_review_logic(
  input,
  output,
  session,
  table_map,
  db_connection,
  subject_id
)

mimic_chart_review_ui(id)

mimic_chart_review_logic(
  input,
  output,
  session,
  table_map,
  db_connection,
  subject_id
)

chart_review_ui(id)

chart_review_ui_logic(
  input,
  output,
  session,
  abstraction_vars,
  table_map,
  instrument_selection
)
}
\arguments{
\item{id}{The namespace id for the UI output}

\item{input}{internal}

\item{output}{internal}

\item{session}{internal}

\item{table_map}{tibble containing a the cdm that most closely matches the user's database and a map of standard tables to user tables}

\item{db_connection}{Connection info received from the database setup module}

\item{subject_id}{The selected subject}

\item{abstraction_vars}{a list containing data abstraction variables (REDCap currently: url, api token, connection, connect button press)}

\item{instrument_selection}{Which REDCap instrument in the project to use}
}
\description{
This module will render a pre coordinated table with multiple tabsets containing patient information. If configured, a chart abstraction UI will also be presented.
}
\keyword{internal}
