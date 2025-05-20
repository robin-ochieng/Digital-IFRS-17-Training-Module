# This module is for the IFRS 17 module 15
IFRS17Module15UI <- function(id) {
  ns <- NS(id)
    tagList(
    h2("Module 3"),
    )
}

IFRS17Module15Server <- (function(id) {
  moduleServer(id, function(input, output, session) {
    ns <- session$ns

  })
})