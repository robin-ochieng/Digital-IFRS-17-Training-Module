IFRS17TrainingIntroUI <- function(id) {
  ns <- NS(id)
  logo_bar <- fluidRow(
    class = "logo-bar",                     # you’ll style this in CSS
    column(
      width = 12,
      tags$div(
        class = "logo-wrapper d-flex justify-content-between align-items-center",
        # left-hand logo
        tags$img(
          src   = "images/kenbright.png",
          class = "logo logo-kenbright"
        ),
        # right-hand logo
        tags$img(
          src   = "images/ira_logo_.png",
          class = "logo logo-afdb"
        )
      )
    )
  )
  tagList(
    logo_bar,
    div(class = "intro-outer-wrapper",
        div(class = "ifrs17-intro-container",
            h1("IFRS 17 Digital Training Module"),
            p(class = "intro-lead", 
              "This self-paced module provides a structured overview of IFRS 17, including its objectives, core measurement models, and practical application in the insurance industry."
            ),
            hr(class = "divider"),

            div(class = "intro-section-header", "What This Module Covers"),
            tags$ul(class = "intro-list",
              tags$li("✅ The key objectives and scope of IFRS 17"),
              tags$li("📊 An overview of core measurement models: Building Block, Premium Allocation, and Variable Fee Approach"),
              tags$li("🧠 Interactive elements such as quizzes and case studies to reinforce understanding")
            ),

            p(class = "intro-note",
              "IFRS 17 aims to bring consistency and clarity to how insurance contracts are reported. This module will introduce you to the standard’s key goals—like increasing transparency and enabling better comparisons across companies. You'll also learn which types of insurance contracts fall under IFRS 17 and why this matters for insurers, regulators, and investors alike."
            )


        )
    )
  )
}



IFRS17TrainingIntroServer <- function(id) {
  moduleServer(id, function(input, output, session) {
  })
}
