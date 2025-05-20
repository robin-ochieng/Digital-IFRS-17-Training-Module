# This module is for the IFRS 17 module 7
IFRS17Module7UI <- function(id) {
  ns <- NS(id)
    tagList(
    h2("Module 3"),
    )
}

IFRS17Module7Server <- (function(id) {
  moduleServer(id, function(input, output, session) {
    ns <- session$ns

  })
})