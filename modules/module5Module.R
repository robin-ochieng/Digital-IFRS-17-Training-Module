# This module is for the IFRS 17 module 5
IFRS17Module5UI <- function(id) {
  ns <- NS(id)
    tagList(
    h2("Module 3"),
    )
}

IFRS17Module5Server <- (function(id) {
  moduleServer(id, function(input, output, session) {
    ns <- session$ns

  })
})