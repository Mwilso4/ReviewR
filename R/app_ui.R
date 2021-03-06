#' @import shiny
#' @import shinydashboard
#' @importFrom shinyjs useShinyjs
app_ui <- function() {
  stop_nav_jscode <- 'window.onbeforeunload = function() { return true; };'
  
  tagList(
    # Leave this function for adding external resources
    golem_add_external_resources(),
    # List the first level UI elements here 
    dashboardPage(title = 'ReviewR',
                  skin = 'red',
                  dashboardHeader(title = tags$a(href='https://github.com/orgs/thewileylab', target='_blank',
                                                 tags$img(src='www/logo.png', width = '125px', height = '50px')
                                                 ),
                                  tags$li(class = 'dropdown', 
                                          actionButton(inputId = 'quit',label = 'Leave ReviewR',
                                                       icon = icon('suitcase-rolling')
                                                       )
                                          )
                                  ),
                  dashboardSidebar(sidebarMenu(id = 'main_tabs',
                                               sidebarMenuOutput('application_menu')
                                               )
                                   ),
                  dashboardBody(tags$script(stop_nav_jscode), #Prevent navigation using browser buttons (back, reload, close tab)
                                shinyjs::useShinyjs(),
                                uiOutput('main_ui')
                                )
                  )
    )
  }

#' @import shiny
golem_add_external_resources <- function(){
  addResourcePath('www', system.file('app/www', package = 'ReviewR') )
  tags$head(golem::activate_js(),
            golem::favicon('www/favicon.png'),
            # Add here all the external resources
            # If you have a custom.css in the inst/app/www
            # Or for example, you can add shinyalert::useShinyalert() here
            tags$link(rel="stylesheet", type="text/css", href="www/custom.css")
            )
  }
