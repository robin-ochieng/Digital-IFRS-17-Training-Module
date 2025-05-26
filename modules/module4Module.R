# This module is for the IFRS 17 module 4
IFRS17Module4UI <- function(id) {
  ns <- NS(id)
    tagList(
        h2("📘 Module 4: Recognition of Insurance Revenue", class = "section-title"),

        div(class = "module-section",
            h3("📖 Introduction"),
            p("This module provides an overview of how insurance contracts are recognized under IFRS 17.")
        ),

        div(class = "module-section",
            h3("📌 Recognition in IFRS 17"),
            p("IFRS 17 requires insurers to recognize groups of insurance contracts in a timely and structured manner to ensure accurate financial reporting, especially in reflecting risk and acquisition costs."),
            p("Below is a summary of the key recognition principles, including when and how a group of contracts should be accounted for.")
        ),

        div(class = "module-section image-timeline-wrapper",
            h3("1. Timing of Initial Recognition", class = "section-subheading"),
            h4("IFRS 17: Initial Recognition Timeline", class = "timeline-title"),
            p("Recognition occurs at the earliest of the following:"),
            div(
                class = "timeline-image-container",
                img(
                    src = "images/initialRecognitionTimeline.png",  # make sure you save the image to this path
                    alt = "IFRS 17 Initial Recognition Timeline",
                    class = "timeline-image"
                )
            )
        ),

        div(class = "module-section",
            h3("2. Identification of Onerous Contracts before Recognition", class = "section-subheading"),
            p("An entity must assess if any contracts are onerous before the earlier of:"),
            tags$ul(
              tags$li("The beginning of the coverage period, or"),
              tags$li("The due date of the first payment.")
            )
        ),

        div(class = "module-section",
            h3("3. Insurance Acquisition Cash Flows (IACFs)", class = "section-subheading"),
            p("IACFs refer to costs related to setting up insurance contracts, such as broker or agent fees."),
            p("Any IACFs paid or received before group recognition are recorded as an asset or liability unless used up immediately."),
            p("These temporarily stay on the books and are recognized once the group of contracts begins.")
        ),

        div(class = "module-section",
            h3("4. Contracts Included in a Group", class = "section-subheading"),
            p("Only contracts issued by the end of the reporting period should be included in the group."),
            p("Insurers must determine an appropriate discount rate to adjust future cash flows to their present value."),
            p("They also need to estimate service provision to fairly allocate revenue."),
            p("New contracts can be added post-period, using the updated rate from the start of the reporting period.")
        ),
        div(
          class = "quiz-nav",
          actionButton(
              ns("to_module_5"),
              label = tagList(icon("arrow-right"), "Next: Module 5 - Measurement on Initial Recognition"),
              class = "control-button-tavnav"
          )
        )  
    )
}

IFRS17Module4Server <- (function(id) {
  moduleServer(id, function(input, output, session) {
    ns <- session$ns

    # create a reactive for the “Next” click
    to_module_5 <- reactive(input$to_module_5)
    # return it so the app can observe it
    to_module_5
  })
})