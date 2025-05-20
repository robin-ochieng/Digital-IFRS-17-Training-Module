# This module is for the IFRS 17 module 13
IFRS17Module13UI <- function(id) {
  ns <- NS(id)
    tagList(
    h2("Module 3"),
    )
}

IFRS17Module13Server <- (function(id) {
  moduleServer(id, function(input, output, session) {
    ns <- session$ns

  })
})