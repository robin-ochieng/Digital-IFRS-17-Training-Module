# This module is for the IFRS 17 module 12
IFRS17Module12UI <- function(id) {
  ns <- NS(id)
    tagList(
    h2("Module 3"),
    )
}

IFRS17Module12Server <- (function(id) {
  moduleServer(id, function(input, output, session) {
    ns <- session$ns

  })
})