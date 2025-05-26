# This module is for the IFRS 17 module 13
IFRS17Module12UI <- function(id) {
  ns <- NS(id)
    tagList(
    h2("Module 12: Insurance Service Result", class = "section-title"), 

    div(
      class = "quiz-nav",
      actionButton(
          ns("to_module_13"),
          label = tagList(icon("arrow-right"), "Next: Module 13 - Presentation in the Statement of Financial Position"),
          class = "control-button-tavnav"
      )
    )     
    )
}

IFRS17Module12Server <- (function(id) {
  moduleServer(id, function(input, output, session) {
    ns <- session$ns
    



    # create a reactive for the “Next” click
    to_module_13 <- reactive(input$to_module_13)

    # return it so the app can observe it
    to_module_13
  })
})