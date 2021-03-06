#' ReviewR Patient Search Tab
#'
#' This file contains all elements that are needed to render the Patient Search Tab
#'
#' @return Patient Search Tab UI Output
#' @export
#' @keywords internal
#'
patient_search_tab <- function() {
  renderUI({
    tagList(
      fluidPage(
        #Box Setup
        box(title = h2('Select a patient to view'),
            width = '100%', 
            status = 'primary', 
            solidHeader = F,
            #Box Contents
            div('To select a patient, please click the desired Subject ID in the table below:'),
            patient_search_ui('patient_search_ns'),
            uiOutput('data_model')
            )
        )
      )
    })
  }
