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
          src   = "images/ira_logo_.png", class = "logo logo-afdb"),
        # right-hand logo
        # tags$img(src   = "images/kenbright.png",  class = "logo logo-kenbright")
      )
    )
  )
tagList(
  # logo_bar,
  div(class = "intro-outer-wrapper",
      div(class = "ifrs17-intro-container",
          
          h1("IFRS 17 Digital Training Module"),
          p(class = "intro-lead",
            "This self-paced module provides a structured overview of IFRS 17, including its objectives, core measurement models, and practical applications."
          ),
          # hr(class = "divider"),
          
          div(class = "cover-section",
              h2(class = "cover-title", "What This Module Covers"),
              tags$ul(class = "cover-list",
                tags$li(
                  span(class = "cover-icon", "✅"),
                  span(class = "cover-text", "The key objectives and scope of IFRS 17")
                ),
                tags$li(
                  span(class = "cover-icon", "📊"),
                  span(class = "cover-text",
                      "An overview of core measurement models: Building Block, Premium Allocation, and Variable Fee Approach")
                ),
                tags$li(
                  span(class = "cover-icon", "🧠"),
                  span(class = "cover-text",
                      "Interactive elements such as quizzes and case studies to reinforce understanding")
                )
              )
          ),
          
          # ——— New Objectives & Scope Section ———
          div(class = "intro-section-header", "Key Objectives & Scope of IFRS 17"),
          tags$ul(class = "objectives-list",
            tags$li("🏷️ Establish a single, consistent measurement model for all insurance contracts"),
            tags$li("📈 Recognize profit over the coverage period to boost transparency"),
            tags$li("🔍 Enhance comparability across insurers and jurisdictions"),
            tags$li("🌐 Scope: applies to insurance contracts, reinsurance held, and investment contracts with discretionary participation features")
          ),
          
          div(
            class = "intro-note",
            # Icon + header
            div(class = "note-header",
                span(class = "note-icon", "ℹ️"),
                span(class = "note-title", "Why It Matters")
            ),
            # Two shorter paragraphs, with key phrases emphasized
            p(
              "IFRS 17 aims to bring consistency and clarity to how insurance contracts are reported, ", 
              strong("increasing transparency"), 
              " and enabling ", 
              strong("better comparisons across companies."), 
              
            ),
            p(
              "You’ll also learn which types of insurance contracts fall under IFRS 17 and why this matters for insurers, regulators, and investors alike."
            )
          ),
          div(
            class = "intro-nav",
            actionButton(
              ns("to_measurement"),
              label = tagList(icon("arrow-right"), "Next: Measurement Models"),
              class = "control-button-tavnav"
            )
          )

      )
  )
)

}



IFRS17TrainingIntroServer <- function(id) {
  moduleServer(id, function(input, output, session) {
 
    to_measurement <- reactive(input$to_measurement)
    
    # return it
    to_measurement


  })
}
