# This module is for the IFRS 17 module 12
IFRS17Module11UI <- function(id) {
  ns <- NS(id)
    tagList(
    h2("Module 11: Investment Contracts with Discretionary Participation Features", class = "section-title"),
    div(
      class = "quiz-nav",
      actionButton(
          ns("to_module_12"),
          label = tagList(icon("arrow-right"), "Next: Module 12 - Modification and Decognition of insurance contracts"),
          class = "control-button-tavnav"
      )
    ) 
    )
}

IFRS17Module11Server <- (function(id) {
  moduleServer(id, function(input, output, session) {
    ns <- session$ns

    # create a reactive for the “Next” click
    to_module_12 <- reactive(input$to_module_12)
    # return it so the app can observe it
    to_module_12
  })
})