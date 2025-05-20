# This module is for the IFRS 17 module 8
IFRS17Module8UI <- function(id) {
  ns <- NS(id)
    tagList(
    h2("Module 3"),
    )
}

IFRS17Module8Server <- (function(id) {
  moduleServer(id, function(input, output, session) {
    ns <- session$ns

  })
})