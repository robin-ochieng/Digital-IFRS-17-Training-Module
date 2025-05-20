# This module is for the IFRS 17 module 11
IFRS17Module11UI <- function(id) {
  ns <- NS(id)
    tagList(
    h2("Module 3"),
    )
}

IFRS17Module11Server <- (function(id) {
  moduleServer(id, function(input, output, session) {
    ns <- session$ns

  })
})