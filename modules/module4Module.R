# This module is for the IFRS 17 module 4
IFRS17Module4UI <- function(id) {
  ns <- NS(id)
tagList(
    h2("Module 3"),
)
}

IFRS17Module4Server <- (function(id) {
  moduleServer(id, function(input, output, session) {
    ns <- session$ns

  })
})