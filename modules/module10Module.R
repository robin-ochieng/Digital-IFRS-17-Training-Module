# This module is for the IFRS 17 module 11
IFRS17Module10UI <- function(id) {
  ns <- NS(id)
    tagList(
    h2("Module 10: Reinsurance Contracts Held", class = "section-title"),
    div(
      class = "quiz-nav",
      actionButton(
          ns("to_module_11"),
          label = tagList(icon("arrow-right"), "Next: Module 11 - Investment Contracts with Discretionary Participation Features"),
          class = "control-button-tavnav"
      )
    ) 
    )
}

IFRS17Module10Server <- (function(id) {
  moduleServer(id, function(input, output, session) {
    ns <- session$ns


    # create a reactive for the “Next” click
    to_module_11 <- reactive(input$to_module_11)
    # return it so the app can observe it
    to_module_11
  })
})