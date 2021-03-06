% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/mod_patient_chart_nav_module.R
\name{patient_nav_ui}
\alias{patient_nav_ui}
\alias{patient_nav_logic}
\alias{subject_info}
\alias{subject_info_logic}
\title{Patient Navigation Module}
\usage{
patient_nav_ui(id)

patient_nav_logic(
  input,
  output,
  session,
  patient_table,
  selected_patient,
  parent
)

subject_info(id)

subject_info_logic(
  input,
  output,
  session,
  previousData,
  all_instruments,
  instrument_selection,
  subject,
  subjectInfo
)
}
\arguments{
\item{id}{The namespace id for the UI output}

\item{input}{internal}

\item{output}{internal}

\item{session}{internal}

\item{patient_table}{A reactive expression containing a DT of the current "All Patients" table}

\item{selected_patient}{A reactive expression containing the currently selected patient subject ID}

\item{parent}{the parent environment of this module}

\item{previousData}{Previous Abstraction "Instrument Complete" Value}

\item{all_instruments}{All data abstraction instruments in the project}

\item{instrument_selection}{The selected data abstraction instrument}

\item{subject}{A reactive expression containing the currently selected patient subject ID}

\item{subjectInfo}{Demographic information about the currently selected patient}
}
\description{
This module will assist with selecting a patient. It keeps the patient search tab data table up to date, server side renders the select input on the patient chart tab, and displays in context information about the selected patient.
}
\keyword{internal}
