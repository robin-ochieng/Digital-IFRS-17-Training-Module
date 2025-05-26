# This module is for the IFRS 17 module 9
IFRS17Module8UI <- function(id) {
  ns <- NS(id)
    tagList(
    h2("Module 8: Onerous Contracts", class = "section-title"),
    div(
      class = "quiz-nav",
      actionButton(
          ns("to_module_9"),
          label = tagList(icon("arrow-right"), "Next: Module 9 - Premium Allocation Approach"),
          class = "control-button-tavnav"
      )
    ) 
    )
}

IFRS17Module8Server <- (function(id) {
  moduleServer(id, function(input, output, session) {
    ns <- session$ns

    # create a reactive for the “Next” click
    to_module_9 <- reactive(input$to_module_9)
    # return it so the app can observe it
    to_module_9
  })
})