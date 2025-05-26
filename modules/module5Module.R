# This module is for the IFRS 17 module 5
IFRS17Module5UI <- function(id) {
  ns <- NS(id)
  tagList(
    div(class = "module-wrapper",
        h2("📘 Module 5: Measurement on Initial Recognition", class = "section-title"),

        div(class = "module-section",
            h3("📖 Introduction"),
            p("This module provides an in-depth overview of the initial recognition measurement requirements for insurance contracts under IFRS 17.")
        ),

        div(class = "module-section",
            h3("📌 Recognition Criteria"),
            p("Insurance contracts must be recognized at the earliest of:"),
            tags$ul(
              tags$li("The beginning of the coverage period;"),
              tags$li("The date when the first premium is due; or"),
              tags$li("The date when the group of contracts becomes onerous.")
            )
        ),

        div(class = "module-section",
          h3("🔍 Components of Measurement at Initial Recognition"),
          p("Under the General Measurement Model (GMM), the initial measurement of a group of insurance contracts is the sum of:"),
          
          tags$ul(
            tags$li(
              strong("Fulfilment Cash Flows (FCF):"),
              tags$ul(
                tags$li("Future Cash Flows: Best estimates of expected premiums, claims, benefits, and expenses."),
                tags$li("Discounting: Adjustment to reflect the time value of money and financial risks."),
                tags$li("Risk Adjustment: Compensation for being uncertainty in non-financial risks (e.g. mortality, lapse).")
              )
            ),
            tags$li(
              strong("Unallocated Loss Adjustment Expenses (ULAE): "),
              "Expected internal claims handling costs that are not directly linked to individual claims. ULAE should be estimated at inception and included in fulfilment cash flows for future claims."
            ),
            tags$li(
              tagList(
                strong("Contractual Service Margin (CSM): "),
                "Represents unearned profit."
              )
            )
          ),
          # Inserted CSM explanation just below the bullet point
          div(class = "csm-section",
            tags$p(
              "The Premium Allocation Approach (PAA) is a simplified method permitted for short-duration contracts or when it provides measurements that are not materially different from those produced under the General Measurement Model (GMM)."
            ),
            tags$p("At initial recognition:"),
            tags$ol(
              tags$li("The liability is measured as: premiums received (or due) – insurance acquisition cash flows"),
              tags$li("Acquisition costs may be ", tags$u("expensed"), " immediately or deferred, depending on the entity’s policy")
            )
          )
        ),

      div(class = "module-section image-table-wrapper",
        h3("📊 Measurement Approaches Overview"),
        div(
          class = "table-image-container",
          img(
            src = "images/measurementApproaches.png",
            alt = "Measurement Approaches Overview Table",
            style = "max-width:100%; height:auto; border: 1px solid #ccc; box-shadow: 0 4px 8px rgba(0,0,0,0.1); border-radius: 8px;"
          )
        )
      ),


        div(class = "module-section",
            h3("🧮 Contractual Service Margin (CSM)"),
            p("The CSM is the key component that defers recognition of profits until insurance services are provided. At initial recognition:"),
            tags$ul(
              tags$li("CSM = Fulfilment cash inflows - outflows-risk adjustment."),
              tags$li("If the result is negative; the contract is onerous, and a loss is recognized immediately in profit or loss.")
            )
        ),
        div(class = "info-box scenario-box",
          tags$h4("📌 Scenario:"),
          tags$ul(
            tags$li("Expected premiums: KES 1,200"),
            tags$li("Expected claims & expenses: KES 900"),
            tags$li("Risk Adjustment: KES 50"),
            tags$li("Discounting impact: KES 100")
          ),
          tags$h4("🧮 Calculation:"),
          tags$ul(
            tags$li("Fulfilment Cash Flows = KES 1,200 - KES 900 - KES 100 - KES 50 = KES 150"),
            tags$li(tags$strong("CSM = KES 150"), " which is to be released over the coverage period.")
          )
        ),      

        div(class = "module-section",
            h3("⚠️ Treatment of Onerous Contracts"),
            p("If the total of expected outflows + risk adjustment exceeds the inflows, the contract is onerous."),
          tags$ul(
            tags$li("No CSM is recognized."),
            tags$li("The difference is recorded as a loss in profit or loss.")
          )            
        ),

        div(class = "module-section image-summary-wrapper",
            h3("📋 Summary of Measurement at Initial Recognition"),
            div(
              class = "summary-image-container",
              img(
                src = "images/summaryofMeasurementonInitialRecognition.png",
                alt = "Summary of Measurement at Initial Recognition",
                style = "max-width:100%; height:auto; border: 1px solid #ccc; box-shadow: 0 4px 8px rgba(0,0,0,0.1); border-radius: 8px;"
              )
            )
        ),
      
        div(class = "module-section summary-box",
            h3("📌 Key Takeaways"),
            tags$ul(
              tags$li("Contracts are recognized when the earliest recognition condition is met."),
              tags$li("Measurement includes future cash flows, discounting, risk adjustment, ULAE, and CSM(under GMM)."),
              tags$li("The CSM ensures no upfront profit. and is adjusted only for changes in future service."),
              tags$li("Onerous contracts result in immediate loss recognition."),
              tags$li("Choice between GMM and PAA depends on duration and result materiality."),
              tags$li("Acquisition costs are treated differently under GMM (included in FCFs) and PAA (either deferred or expensed).")
            )
        ),

        div(class = "quiz-nav",
            actionButton(
              ns("to_module_6"),
              label = tagList(icon("arrow-right"), "Next: Module 6 – Subsequent Measurement"),
              class = "control-button-tavnav"
            )
        )
    )
  )
}


IFRS17Module5Server <- (function(id) {
  moduleServer(id, function(input, output, session) {
    ns <- session$ns

    # create a reactive for the “Next” click
    to_module_6 <- reactive(input$to_module_6)
    # return it so the app can observe it
    to_module_6
  })
})