# This module is for the IFRS 17 module 9
IFRS17Module9UI <- function(id) {
  ns <- NS(id)
    tagList(
    h2("Module 3"),
    )
}

IFRS17Module9Server <- (function(id) {
  moduleServer(id, function(input, output, session) {
    ns <- session$ns

  })
})