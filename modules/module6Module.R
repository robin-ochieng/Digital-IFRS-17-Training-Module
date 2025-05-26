# This module is for the IFRS 17 module 7
IFRS17Module6UI <- function(id) {
  ns <- NS(id)
  tagList(
    h2("📘 Module 6: Subsequent Measurement", class = "section-title"),

    div(class = "module-content-wrapper",
        h3("Introduction", class = "subsection-title"),
        p("This module provides an in-depth overview of the subsequent measurement requirements for insurance contracts under IFRS 17."),

        h3("Overview of Subsequent Measurement", class = "subsection-title"),
        tags$ul(
          tags$li("Changes in estimates of future cash flows"),
          tags$li("Release of CSM based on coverage units"),
          tags$li("Changes in discount rates"),
          tags$li("Claims incurred and paid"),
          tags$li("Experience adjustments and risk changes"),
          tags$li("Amortization of insurance acquisition cash flows")
        ),

        h3("Liability for Remaining Coverage (LRC)", class = "subsection-title"),
        p("The LRC reflects the insurer’s obligation to provide coverage in the future. At each reporting date, it is updated for:"),
        tags$ul(
          tags$li("Premiums received"),
          tags$li("Release of CSM as services are rendered"),
          tags$li("Changes in fulfilment cash flows relating to future service"),
          tags$li("Adjustments to risk adjustment")
        ),
        p(em("Note: The CSM is adjusted only for changes that relate to future service.")),
        p("For contracts with boundaries extending beyond twelve (12) months:"),
        tags$ul(
          tags$li("Opening LRC balance"),
          tags$li("Changes due to claims and expenses"),
          tags$li("Time value of money and financial risks"),
          tags$li("Risk Margin for non-financial risk"),
          tags$li("Contractual Service Margin (CSM)"),
          tags$li("Loss Component (if applicable)")
        ),
        p("For contracts with boundaries of twelve (12) months or less:"),
        tags$ul(
          tags$li("Opening LRC balance"),
          tags$li("Add: Premium Received"),
          tags$li("Less: Amortization of Insurance acquisition costs"),
          tags$li("Less: Insurance Revenue")
        ),
        img(src = "images/subsequent_lrc.png", class = "module-image"),
        h3("Liability for Incurred Claims (LIC)", class = "subsection-title"),
        p("The LIC represents the obligation to settle claims that have already been incurred but not paid. Updates include:"),
        tags$ul(
          tags$li("Recognition of incurred claims"),
          tags$li("Changes in estimates for reported and unreported claims (IBNR, OCR)"),
          tags$li("Discounting if payment is expected after 12 months"),
          tags$li("Risk adjustment for non-financial risk"),
          tags$li("Unallocated Loss Adjustment Expenses (ULAE): internal costs expected to be incurred when settling claims")
        ),
        img(src = "images/subsequent_lic.png", class = "module-image"),
        h3("Adjusting the Contractual Service Margin (CSM)", class = "subsection-title"),
        p("The CSM is adjusted for:"),
        tags$ul(
          tags$li("Changes in fulfilment cash flows related to future service"),
          tags$li("Accretion of interest using the locked-in rate"),
          tags$li("Release to profit or loss based on coverage units")
        ),
        p("It is not adjusted for:"),
        tags$ul(
          tags$li("Changes related to past or current service"),
          tags$li("Experience variances from prior periods")
        ),
        div(class = "info-box",
          tags$strong("Scenario:"),
          tags$ol(type = "a",
            tags$li("Opening CSM: KES 150,000"),
            tags$li("Interest accretion: KES 5,000"),
            tags$li("Adjustment from change in future cash flows: KES -30,000"),
            tags$li("Release based on service provided: KES 20,000")
          ),
          tags$strong("Calculation:"),
          tags$ol(type = "a",
            tags$li("Adjusted CSM = 150,000 + 5,000 - 30,000 - 20,000 = KES 105,000"),
            tags$li("If the change in future service exceeded the CSM, the excess would be recognized as a loss.")
          )
        ),

        h3("🔍 Key Takeaways", class = "subsection-title"),
        tags$ul(
          tags$li("Subsequent measurement reflects current expectations of future service and incurred obligations."),
          tags$li("The LRC and LIC are continuously updated as information becomes available."),
          tags$li("The CSM spreads profit recognition over the service period."),
          tags$li("Onerous contract assessments continue throughout the contract’s life."),
          tags$li("ULAE should be included in fulfilment cash flows for incurred claims.")
        )
    ),

    div(
      class = "quiz-nav",
      actionButton(
        ns("to_module_7"),
        label = tagList(icon("arrow-right"), "Next: Module 7 – Discounting, CSM & Risk Adjustment"),
        class = "control-button-tavnav"
      )
    )
  )
}


IFRS17Module6Server <- (function(id) {
  moduleServer(id, function(input, output, session) {
    ns <- session$ns



    # create a reactive for the “Next” click
    to_module_7 <- reactive(input$to_module_7)
    # return it so the app can observe it
    to_module_7
  })
})