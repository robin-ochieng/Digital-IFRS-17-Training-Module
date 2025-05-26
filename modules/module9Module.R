# This module is for the IFRS 17 module 10
IFRS17Module9UI <- function(id) {
  ns <- NS(id)
    tagList(
    h2("Module 9: Premium Allocation Approach", class = "section-title"),
    div(
      class = "quiz-nav",
      actionButton(
          ns("to_module_10"),
          label = tagList(icon("arrow-right"), "Next: Module 10 - Reinsurance Contracts Held"),
          class = "control-button-tavnav"
      )
    ) 
    )
}

IFRS17Module9Server <- (function(id) {
  moduleServer(id, function(input, output, session) {
    ns <- session$ns

    # create a reactive for the “Next” click
    to_module_10 <- reactive(input$to_module_10)
    # return it so the app can observe it
    to_module_10
  })
})