# This module is for the IFRS 17 module 6
IFRS17Module6UI <- function(id) {
  ns <- NS(id)
    tagList(
    h2("Module 3"),
    )
}

IFRS17Module6Server <- (function(id) {
  moduleServer(id, function(input, output, session) {
    ns <- session$ns

  })
})