# This module is for the IFRS 17 module 4
IFRS17Module3UI <- function(id) {
  ns <- NS(id)
    tagList(
      div(class = "module-section",
        h3("📘 Module 3: Level of Aggregation", class = "subheading-highlight"),
        
        div(class = "objective-box",
            strong("Module Objective"),
            p("This module provides an overview on how insurance contracts are grouped for measurement and reporting under IFRS 17.")
        ),
        
        div(class = "content-box",
            h4("What is Aggregation in IFRS 17?"),
            p("Under IFRS 17, aggregation refers to the grouping of insurance contracts that share similar risks and are managed together. This helps ensure accurate loss recognition and profit timing in financial reporting.")
        ),
        
        div(class = "step-section",
            h4(class = "step-title", "Step 1: Grouping by Portfolio"),
            p("A portfolio consists of insurance contracts that share:"),
            tags$ol(
                tags$li("Similar characteristics – e.g., motor insurance, term life products"),
                tags$li("Similar management structure")
            )
        ),
        
        div(class = "step-section",
            h4(class = "step-title", "Step 2: Subdividing Portfolios into Groups"),
            p("Once portfolios are defined, each must further be split into at least three distinct groups:"),
            tags$ol(
                tags$li(strong("Onerous Contracts at Initial Recognition – "), "These contracts are expected to generate a loss from the beginning"),
                tags$li(strong("Contracts with no significant risk of becoming onerous – "), "Expected to remain profitable or at least break even"),
                tags$li(strong("Remaining Contracts – "), "Not considered loss-making upfront, but might become onerous over time")
            )
        ),
        
        div(class = "step-section",
            h4(class = "step-title", "Step 3: Breakdown of Cohorts"),
            p("After subdivision, contracts shall be grouped into cohorts based on issue dates. All contracts issued within the same calendar year shall form a single cohort.")
        ),
        
        div(class = "image-wrapper",
            h4("The Grouping Process"),
            img(src = "images/portfolioContracts.png", 
                alt = "IFRS 17 Level of Aggregation Diagram", 
                class = "aggregation-image")
        ),

        div(class = "module-section",
            h3("🔍 Assessing Onerous Contracts under Premium Allocation Approach", class = "subheading-highlight"),
            
            p("Under the Premium Allocation Approach (PAA), it is assumed that no contracts in a portfolio are onerous at initial recognition ",
              strong("unless facts and circumstance indicate otherwise.")),
            
            p("Contracts that are not onerous initially must also be assessed on whether they might become onerous later, by evaluating ",
              strong("potential changes in facts and circumstances.")),
            
            p("For contracts which do not apply the premium allocation approach, ",
              a(href = "#", "the contracts"),
              " that are not onerous at initial recognition must be assessed whether they have any significant probability of becoming onerous."),
            
            p("This shall be based on:"),
            
            tags$ul(
              tags$li("Likelihood of changes in assumptions which may result in the contract becoming onerous"),
              tags$li(HTML('Information provided by an entity’s internal <a href="#">reporting</a>.'))
            ),
            
            h4("📌 Grouping Timeframe and Consistency", class = "step-title"),
            
            p("While grouping, contracts issued more than one year apart must not be included in the same group."),
            
            p("Additionally, once contract groupings are determined at initial recognition, they must remain fixed; the composition of groups cannot be reassessed or changed later.")
        )
    ),


    div(
      class = "quiz-nav",
      actionButton(
          ns("to_module_4"),
          label = tagList(icon("arrow-right"), "Next: Module 4 – Recognition of Insurance Revenue"),
          class = "control-button-tavnav"
      )
    )  
)
}

IFRS17Module3Server <- (function(id) {
  moduleServer(id, function(input, output, session) {
    ns <- session$ns



    # create a reactive for the “Next” click  
    to_module_4 <- reactive(input$to_module_4)
    # return it so the app can observe it
    to_module_4
  })
})