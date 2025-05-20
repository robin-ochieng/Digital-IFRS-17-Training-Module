# This module is for the IFRS 17 module 2
IFRS17Module2UI <- function(id) {
  ns <- NS(id)
    tagList(
    h2("Module 2 – Scope of IFRS 17"),
    p("This is a placeholder for content related to IFRS 17 scope.")
    )
}

IFRS17Module2Server <- (function(id) {
  moduleServer(id, function(input, output, session) {

  })
})