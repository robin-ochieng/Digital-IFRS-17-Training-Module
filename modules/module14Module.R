# This module is for the IFRS 17 module 15
IFRS17Module14UI <- function(id) {
  ns <- NS(id)
    tagList(
    h2("Module 14: Insurance Service Results", class = "section-title"),
    div(
      class = "quiz-nav",
      actionButton(
          ns("to_module_15"),
          label = tagList(icon("arrow-right"), "Next: Module 15 - Insurance Finance Income or Expenses"),
          class = "control-button-tavnav"
      )
    ) 
    )
}

IFRS17Module14Server <- (function(id) {
  moduleServer(id, function(input, output, session) {
    ns <- session$ns

    # create a reactive for the “Next” click
    to_module_15 <- reactive(input$to_module_15)
    # return it so the app can observe it
    to_module_15

  })
})