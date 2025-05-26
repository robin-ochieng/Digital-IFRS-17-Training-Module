# This module is for the IFRS 17 module 16
IFRS17Module15UI <- function(id) {
  ns <- NS(id)
    tagList(
    h2("Module 15: Insurance Finance Income or Expenses", class = "section-title"),
    div(
      class = "quiz-nav",
      actionButton(
          ns("to_case_studies"),
          label = tagList(icon("arrow-right"), "Next: Case Studies"),
          class = "control-button-tavnav"
      )
    ) 
    )
}

IFRS17Module15Server <- (function(id) {
  moduleServer(id, function(input, output, session) {
    ns <- session$ns


    
    # create a reactive for the “Next” click
    to_case_studies <- reactive(input$to_case_studies)
    # return it so the app can observe it
    to_case_studies 
  })
})