# This module is for the IFRS 17 module 10
IFRS17Module10UI <- function(id) {
  ns <- NS(id)
    tagList(
    h2("Module 3"),
    )
}

IFRS17Module10Server <- (function(id) {
  moduleServer(id, function(input, output, session) {
    ns <- session$ns

  })
})