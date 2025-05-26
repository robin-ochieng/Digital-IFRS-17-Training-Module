# This module is for the IFRS 17 module 3
IFRS17Module2UI <- function(id) {
  ns <- NS(id)
tagList(
    h2("Module 2: Combination & Separation of Insurance Contracts", class = "section-title"),

    div(
      class = "quiz-nav",
      actionButton(
          ns("to_module_3"),
          label = tagList(icon("arrow-right"), "Next: Module 3 – Level of Aggregation"),
          class = "control-button-tavnav"
      )
    )  
)
}

IFRS17Module2Server <- (function(id) {
  moduleServer(id, function(input, output, session) {
    ns <- session$ns

    # create a reactive for the “Next” click
    to_module_3 <- reactive(input$to_module_3)
    # return it so the app can observe it
    to_module_3
  })
})