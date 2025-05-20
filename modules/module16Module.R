# This module is for the IFRS 17 module 16
IFRS17Module16UI <- function(id) {
  ns <- NS(id)
    tagList(
    h2("Module 3"),
    )
}

IFRS17Module16Server <- (function(id) {
  moduleServer(id, function(input, output, session) {
    ns <- session$ns

  })
})