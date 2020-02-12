
<!-- README.md is generated from README.Rmd. Please edit that file -->

# ReviewR: A light-weight, portable tool for reviewing individual patient records

<!-- badges: start -->

[![DOI](https://zenodo.org/badge/DOI/10.5281/zenodo.1488535.svg)](https://doi.org/10.5281/zenodo.1488535)
<!-- badges: end -->

ReviewR is a portable Shiny tool to help you explore patient data across
different data models. Within ReviewR, you can browse data stored in
either the OMOP or MIMIC-III data model.

In addition to viewing patient data, you may also connect to a REDCap
project to perform a chart review.

Currently, ReviewR will connect to Google BigQuery as a database
back-end, with support planned for:

  - PostgreSQL
  - SQL Server
  - others supported by the dbplyr back-end
    (<https://dbplyr.tidyverse.org/>)

## Installation

To install the latest development release:

``` r
# install.packages('usethis')
usethis::create_from_github("thewileylab/ReviewR")
```

## Shiny Server Deployment

ReviewR can optionally be deployed to a Shiny Server. Follow the [Shiny
Server Quick Start
Guide](https://support.rstudio.com/hc/en-us/articles/360011458854-Shiny-Server-Quick-Start-Installation-and-Configuration)
to get Shiny Server up and running. After cloning the repository as
described above, symlink the ReviewR directory to
`/srv/shiny-server/ReviewR`. Note, for Google Authentication to work,
your server must have a fully qualified domain name and link to a Google
Project that you own to perform authorization.

## Usage

To run the application from your local machine:

``` r
shiny::runApp('app.R', port = 8100)
```

Once the app has loaded, please complete the ‘Setup’ tab (found in the
left navigation menu) to connect to your database and optionally connect
to a REDCap project.

### View Mode

Complete the database setup. For BigQuery connections, simply press
“Sign in with Google” and you will be redirected to authenticate with
Google. Once successfully connected, the ‘Patient Search’ tab will
appear. Select the patient you wish to view, and you will be taken to a
pre-coordinated table containing EHR data for that patient. Navigate
through patients using the previous and next buttons or select form the
dropdown on the ‘Chart Review’ tab. At any time, you may return to the
‘Patient Search’ tab to select a different patient. Patient
information globally within each tab or by a particular column.
Searching via regex is also supported.

### Review Mode

Optionally, you may connect to a REDCap project to store manual review
information. On the setup tab, enter your institution’s REDCap URL and
an API token for a REDCap project. This project may contain multiple
REDCap instruments for data collection which are selectable from the
Setup interface. Once connected, please select the REDCap field that
contains your patient information as well as the field that will contain
reviewer information. Enter your name to keep track of who has completed
the review.

Now, after selecting a patient from the ‘Patient Search’ tab, your
REDCap instrument will appear next to the patient information on the
‘Chart Review’ tab. Fill in desired information and click the ‘Upload
to REDCap’ button to store your information in the REDCap project.

## Disclaimer

This is a work in progress and thus there are no guarantees of
functionality or accuracy. Use at your own risk.

## Getting help

If you encounter bugs, please file a minimal reproducible example on
[GitHub](https://github.com/thewileylab/ReviewR/issues).

-----

Please note that the ‘ReviewR’ project is released with a [Contributor
Code of Conduct](CODE_OF_CONDUCT.md). By contributing to this project,
you agree to abide by its terms.