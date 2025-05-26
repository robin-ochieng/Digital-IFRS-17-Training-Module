# This module is for the IFRS 17 module 7
IFRS17Module7UI <- function(id) {
  ns <- NS(id)
    tagList(
    div(
      class = "module-intro-text",
      h2("📘 Module 7: Discounting CSM and Risk Adjustment"),
      h3("1. Discounting"),
      p("This sub-module introduces the fundamental concept of discounting under IFRS 17, emphasizing the importance of adjusting future cash flows to reflect the time value of money. Discounting ensures that the value of expected future payments and receipts are expressed in today’s terms, allowing for accurate liability measurement. The module explores key principles such as the use of appropriate discount rates, the distinction between bottom-up and top-down approaches, and the role of liquidity, risk, and market consistency in selecting these rates. Understanding these concepts is essential for accurately valuing insurance contracts and complying with IFRS 17 requirements."),
      tags$hr(),       
      h3("2. Contractual Service Margin (CSM)"),
      p("The Contractual Service Margin (CSM) is a fundamental concept in IFRS 17 that represents the unearned profit an insurer expects to recognize as it provides insurance coverage over time. This module provides a comprehensive overview of how the CSM is calculated, adjusted, and released. It examines how CSM prevents the upfront recognition of future profits and how it interacts with the Liability for Remaining Coverage (LRC). The module also covers scenarios where a group of contracts becomes onerous—causing the CSM to be set to nil and a loss component to be established—and how reversals of such losses may occur. Understanding the CSM is crucial for ensuring appropriate profit recognition and financial statement transparency under IFRS 17."),
      tags$hr(), 
      h3("3. Risk Adjustment"),
      p("Under IFRS 17, one of the key components in measuring insurance contract liabilities is the Risk Adjustment for Non-Financial Risk (RA). This adjustment represents the compensation an insurer requires for bearing the uncertainty about the amount and timing of cash flows that arise from non-financial risks. While the fulfilment cash flows reflect expected values, the risk adjustment accounts for the inherent variability and uncertainty in those expectations. It ensures that liabilities are not just a neutral best estimate but also include a margin for risk—aligned with the insurer's own risk appetite and risk-bearing capacity.")
    ),


    box(
        title = "Answer the following questions to test your understanding of Discounting, CSM & Risk Adjustment.",
        status = "white", solidHeader = TRUE, width = 12,
        p("Please enter your name."),
        textInput(ns("participant_name"), "Enter your Name:")
    ),


    box(
      title = "1.  Why are future cash flows discounted under IFRS 17?",
      status = "white", solidHeader = TRUE, width = 12,
      radioButtons(ns("q1"), label = NULL, choices = c(
        "To reduce the tax liability associated with insurance contracts",
        "To reflect the time value of money and financial risk not already in cash flow estimates",
        "To match insurance revenue with incurred claims", 
        "To comply with solvency regulations under IFRS 9"), selected = character(0))
    ),
    
    box(
      title = "2.  Which of the following is NOT a required characteristic of the discount rate under IFRS 17?",
      status = "white", solidHeader = TRUE, width = 12,
      radioButtons(ns("q2"), label = NULL, choices = c(
        "Consistency with observable market prices for similar cash flows", 
        "Inclusion of illiquidity premiums to reflect insurance contract liquidity", 
        "Use of a single fixed discount rate across all types of contracts", 
        "Alignment with other assumptions used in valuation to avoid double counting"), selected = character(0))
    ),
    
    box(
      title = "3.  Which of the following is a correct interpretation of IFRS 17's guidance on using market data to determine discount rates?",
      status = "white", solidHeader = TRUE, width = 12,
      radioButtons(ns("q3"), label = NULL, choices = c(
        "Market observable discount rates can be used even if they reflect credit risk not relevant to the insurance liability.", 
        "Observable market prices should always be used, even if they include factors unrelated to insurance contract cash flows.", 
        "Discount rates must exclude the effect of market variables that do not impact the insurance contract's cash flows.", 
        "Discount rates should reflect all observable market factors regardless of contract characteristics."), selected = character(0))
    ),
    
    box(
      title = "4. What is the primary distinction between the bottom-up and top-down approaches for deriving discount rates under IFRS 17?",
      status = "white", solidHeader = TRUE, width = 12,
      radioButtons(ns("q4"), label = NULL, choices = c(
        "The bottom-up approach starts from asset returns and adjusts for insurance features", 
        "The top-down approach uses a risk-free curve and adds risk premiums", 
        "The bottom-up approach starts with a liquid risk-free yield curve and adjusts for illiquidity", 
        "The top-down approach always requires matching the exact liquidity of insurance contracts"), selected = character(0))
    ),

    box(
    title = "5.  Which statement is TRUE regarding liquidity adjustments in the top-down approach under IFRS 17?",
    status = "white", solidHeader = TRUE, width = 12,
    radioButtons(ns("q5"), label = NULL,
                choices = c(
                "Liquidity differences between the reference assets and insurance contracts must always be adjusted", 
                "No liquidity adjustments are allowed under the top-down approach", 
                "Adjustments are made only if the reference portfolio’s liquidity differs significantly from that of the insurance contracts", 
                "Liquidity risk is already captured in the nominal cash flows, so no adjustments are required"), selected = character(0))
    ),   
    box(
      title = "6. . An insurance contract is expected to pay the following future cash flows at the end of each year for the next 3 years:",
      status = "white", solidHeader = TRUE, width = 12,
      # Data table
      tags$table(class = "table table-bordered", style = "width: 300px;",
        tags$thead(
          tags$tr(
            tags$th("Year"),
            tags$th("Expected Cash Flow")
          )
        ),
        tags$tbody(
          tags$tr(tags$td("1"), tags$td("$1,000")),
          tags$tr(tags$td("2"), tags$td("$1,200")),
          tags$tr(tags$td("3"), tags$td("$1,500"))
        )
      ),
      # Assumptions
      tags$ul(
        tags$li("The risk-free interest rate is 3% per annum, compounded annually."),
        tags$li("The liquidity adjustment for the insurance contract is 0.5% per annum."),
        tags$li("Use the bottom-up approach to calculate discount rates."),
        tags$li("Discounting is done from end-of-year values to present value at time 0.")
      ),
      # Question prompt
      p(strong("i) What is the total discount rate to be used under the bottom-up approach?")),
      # Answer choices
      radioButtons(ns("q6_part1"),
                  label = NULL,
                  choices = c(
                    "A) 3.0%",
                    "B) 2.5%",
                    "C) 3.5%",
                    "D) 2.0%"
                  ),
                  selected = character(0)
      ),

      # Part ii
      p(strong("ii) What is the present value of the expected cash flows using the appropriate discount rate from Part A?")),
      radioButtons(ns("q6_part2"), label = NULL,
        choices = c("A) 3,477.32", "B) 3,506.85", "C) 3,599.25", "D) 3,423.18"),
        selected = character(0)
      ),

      # Part iii
      p(strong("iii) If instead the top-down approach was used and the yield on the reference portfolio is 4.5%, and credit & non-insurance-related risks account for 2%, what would be the equivalent discount rate?")),
      radioButtons(ns("q6_part3"), label = NULL,
        choices = c("A) 4.5%", "B) 2.5%", "C) 2.0%", "D) 6.5%"),
        selected = character(0)
      ),

      # Part iv
      p(strong("iv) What is the impact on the present value if the liquidity adjustment increases to 1.0%, keeping the risk-free rate constant?")),
      radioButtons(ns("q6_part4"), label = NULL,
        choices = c("A) PV increases", "B) PV decreases", "C) PV stays the same", "D) PV becomes negative"),
        selected = character(0)
      )
    ),


    box(
    title = "7.  What does the Contractual Service Margin (CSM) represent under IFRS 17?",
    status = "white", solidHeader = TRUE, width = 12,
    radioButtons(ns("q7"), label = NULL,
                choices = c(
                    "The present value of future claims",
                    "The expected profit from insurance contracts yet to be earned",
                    "The expected loss from past service",
                    "The premium received net of acquisition costs"), selected = character(0))
    ),

    box(
    title = "8.  When a group of insurance contracts becomes onerous after initial recognition under IFRS 17, what happens to the Contractual Service Margin (CSM)?",
    status = "white", solidHeader = TRUE, width = 12,
    radioButtons(ns("q8"), label = NULL,
                choices = c(
                    "It is increased to reflect the higher expected losses.",
                    "It remains unchanged, as changes are only recognized at initial recognition.",
                    "It is set to zero, and a loss component is established to reflect the excess of fulfilment cash flows over the expected inflows.",
                    "It is transferred to the Liability for Incurred Claims (LIC)."), selected = character(0))
    ),

    box(
    title = "9.  Can a loss component (LC) established for an onerous group of contracts under IFRS 17 be reversed in subsequent periods?",
    status = "white", solidHeader = TRUE, width = 12,
    radioButtons(ns("q9"), label = NULL,
                choices = c(
                    "No, once established, a loss component cannot be reversed.", 
                    "Yes, if future changes in fulfilment cash flows indicate that the group is no longer onerous.", 
                    "Only if the contracts are derecognized", 
                    "Yes, but only through adjustments to the Risk Adjustment for non-financial risk."), selected = character(0))
    ),

    box(
    title = "10. In the context of IFRS 17, what does the Liability for Remaining Coverage (LRC) represent when the Contractual Service Margin (CSM) is nil?",
    status = "white", solidHeader = TRUE, width = 12,
    radioButtons(ns("q10"), label = NULL,
                choices = c(
                    "Only the present value of future cash flows without any adjustments.",
                    "The sum of the fulfilment cash flows and the loss component.",
                    "The Liability for Incurred Claims (LIC) only.",
                    "The Risk Adjustment for non-financial risk only."), selected = character(0))
    ),

    box(
    title = "11.  Which discount rate is used to accrete interest on the CSM?",
    status = "white", solidHeader = TRUE, width = 12,
    radioButtons(ns("q11"), label = NULL,
                choices = c(
                    "The risk-free rate at the reporting date",
                    "The weighted average discount rate for incurred claims",
                    "The discount rate at initial recognition of the group of contracts",
                    "The current market interest rate for government bonds"), selected = character(0))
    ),

    box(
      title = "12. When does an insurance contract group transition from an asset to a liability?",
      status = "white", solidHeader = TRUE, width = 12,
      # Part a – concept check
      radioButtons(ns("q12"), label = NULL,
        choices = c(
          "When premiums are not received",
          "When expected future outflows exceed inflows ",
          "When it is reinsured",
          "At contract expiry"
        ),
        selected = character(0)
      ),
      # Scenario introduction
      p(strong("An insurance company issues a group of insurance contracts on 1 January 20X1. The following information is available:")),
      tags$ul(
        tags$li("Present Value of Future Cash Inflows: CU 1,200"),
        tags$li("Present Value of Future Cash Outflows (incl. acquisition costs): CU 1,000"),
        tags$li("Risk Adjustment for Non-Financial Risk: CU 50"),
        tags$li("Discount rate at initial recognition: 5% annually, compounded yearly"),
        tags$li("Coverage period: 4 years, with coverage services evenly provided")
      ),
      # Part i
      p(strong("i) What is the initial CSM at 1 January 20X1?")),
      radioButtons(ns("q12_part1"), label = NULL,
        choices = c("A. CU 200", "B. CU 150", "C. CU 250", "D. CU 100"),
        selected = character(0)
      ),
      # Part ii
      p(strong("ii) What is the CSM balance at 31 December 20X1, before release, assuming a 5% interest rate?")),
      radioButtons(ns("q12_part2"), label = NULL,
        choices = c("A. CU 150", "B. CU 157.5", "C. CU 160", "D. CU 155"),
        selected = character(0)
      ),
      # Part iii
      p(strong("iii) If the CSM is released evenly over the 4-year coverage period, what is the CSM balance after release at 31 December 20X1?")),
      radioButtons(ns("q12_part3"), label = NULL,
        choices = c("A. CU 118.125", "B. CU 120", "C. CU 130", "D. CU 100"),
        selected = character(0)
      )
    ),

      box(
      title = "13.   What is the primary purpose of the risk adjustment under IFRS 17?",
      status = "white", solidHeader = TRUE, width = 12,
      radioButtons(ns("q13"), label = NULL,
                  choices = c(
                      "To cover future investment volatility", 
                      "To reflect the insurer’s risk of financial market fluctuations",
                      "To compensate for non-financial risk uncertainty in future cash flows", 
                      "To reduce the impact of changes in discount rates"), selected = character(0))
      ),

      # Question 14
      box(
      title = "14. Which of the following characteristics would lead to a higher risk adjustment according to IFRS 17 principles?",
      status = "white", solidHeader = TRUE, width = 12,
      radioButtons(ns("q14"), label = NULL,
                  choices = c(
                      "High-frequency, low-severity risks",
                      "Short-duration contracts with predictable claims",
                      "Risks with narrow probability distributions",
                      "Contracts where little is known about emerging experience"
                  ),
                  selected = character(0)
      )
      ),

      # Question 15
      box(
      title = "15. Which of the following risks is excluded from the IFRS 17 risk adjustment?",
      status = "white", solidHeader = TRUE, width = 12,
      radioButtons(ns("q15"), label = NULL,
                  choices = c(
                      "Lapse risk",
                      "Expense risk",
                      "Financial risk (e.g. interest rate risk)",
                      "Morbidity risk"
                  ),
                  selected = character(0)
      )
      ),

      # Question 16
      box(
      title = "16. Two otherwise identical contracts differ only in duration: Contract A is 5 years; Contract B is 15 years. Which will have the higher risk adjustment, and why?",
      status = "white", solidHeader = TRUE, width = 12,
      radioButtons(ns("q16"), label = NULL,
                  choices = c(
                      "Contract A, due to faster runoff",
                      "Contract B, due to longer exposure to uncertainty",
                      "Both will have the same risk adjustment",
                      "Contract A, due to the need for more immediate reserves"
                  ),
                  selected = character(0)
      )
      ),

      # Question 17
      box(
      title = "17. Which method is not typically used to quantify the risk adjustment under IFRS 17?",
      status = "white", solidHeader = TRUE, width = 12,
      radioButtons(ns("q17"), label = NULL,
                  choices = c(
                      "Cost of capital method",
                      "Conditional Tail Expectation (CTE)",
                      "Confidence level",
                      "Historical premium rate analysis"
                  ),
                  selected = character(0)
      )
      ),

    # Question 18
    box(
      title = "18. Which of the following is *not* shown separately in IFRS 17 SFP presentation?",
      status = "white", solidHeader = TRUE, width = 12,

      # Part 1 – Original question
      radioButtons(ns("q18"), label = NULL,
        choices = c(
          "Insurance contract liabilities",
          "Insurance contract assets",
          "Deferred acquisition costs",
          "Reinsurance contract assets"
        ),
        selected = character(0)
      ),

      # Scenario intro
      p(strong("An insurer estimates that the present value of future cash outflows from a group of insurance contracts follows a normal distribution with:")),
      tags$ul(
        tags$li("Mean (Expected Value): $10,000,000"),
        tags$li("Standard Deviation: $1,500,000"),
        tags$li("The insurer uses a confidence level approach to determine the risk adjustment.")
      ),

      # Q18 (a)
      p(strong("(a) What is the value of the liability at the 75% confidence level? Use z = 0.674")),
      radioButtons(ns("q18_part1"), label = NULL,
        choices = c("A. $10,506,000", "B. $11,011,000", "C. $11,674,000", "D. $12,350,000"),
        selected = character(0)
      ),

      # Q18 (b)
      p(strong("(b) What is the risk adjustment for non-financial risk at the 75% confidence level?")),
      radioButtons(ns("q18_part2"), label = NULL,
        choices = c("A. $674,000", "B. $750,000", "C. $1,011,000", "D. $1,674,000"),
        selected = character(0)
      ),

      # Q18 (c)
      p(strong("(c) If the insurer increases the confidence level to 90%, what is the new risk adjustment? (Use z = 1.282)")),
      radioButtons(ns("q18_part3"), label = NULL,
        choices = c("A. $1,282,000", "B. $1,500,000", "C. $1,922,000", "D. $2,282,000"),
        selected = character(0)
      )
    ),

    actionButton(ns("submit"), "Submit Quiz", icon = icon("check"), class = "btn-primary control-button-submit" ),
    br(), 
    br(),
    uiOutput(ns("result")),
    div(
      class = "quiz-nav",
      actionButton(
          ns("to_module_8"),
          label = tagList(icon("arrow-right"), "Next: Module 8 - Onerous Contracts"),
          class = "control-button-tavnav"
      )
    ) 
    )
}

correct_answers <- list(
  q1 = list(
    answer = "To reflect the time value of money and financial risk not already in cash flow estimates",
    explanation = "IFRS 17 requires discounting to reflect the time value of money and financial risks not already included in cash flows (Paragraph 36)."
  ),
  q2 = list(
    answer = "Use of a single fixed discount rate across all types of contracts",
    explanation = "IFRS 17 emphasizes that discount rates should reflect specific contract characteristics—not a fixed rate across all contracts."
  ),
  q3 = list(
    answer = "Discount rates must exclude the effect of market variables that do not impact the insurance contract's cash flows.",
    explanation = "This ensures liabilities reflect only relevant economic assumptions (IFRS 17 Paras 36b–c)."
  ),
  q4 = list(
    answer = "The bottom-up approach starts with a liquid risk-free yield curve and adjusts for illiquidity",
    explanation = "The bottom-up approach starts with a liquid risk-free yield curve and adjusts for illiquidity"
  ),
  q5 = list(
    answer = "Adjustments are made only if the reference portfolio’s liquidity differs significantly from that of the insurance contracts",
    explanation = "Liquidity adjustments are made only when the reference portfolio's liquidity differs significantly from that of the insurance contracts."
  ),
  q6_part1 = list(
    answer = "B) 2.5%",
    explanation = "The liquidity adjustment is subtracted from the risk-free rate to arrive at the discount rate."
  ),
  q6_part2 = list(
    answer = "B) 3,506.85",
    explanation = "The present value is calculated using the adjusted discount rate of 2.5%."
  ),
  q6_part3 = list(
    answer = "B) 2.5%",
    explanation = "The credit/non-insurance risk adjustment is subtracted from the portfolio yield to arrive at the discount rate."
  ),
  q6_part4 = list(
    answer = "B) PV decreases",
    explanation = "Increasing the liquidity adjustment increases the discount rate, which decreases the present value of future cash flows."
  ),
  q7 = list(
    answer = "The expected profit from insurance contracts yet to be earned",
    explanation = "The CSM represents the unearned profit from insurance contracts that will be recognized as revenue over the coverage period."
  ),
  q8 = list(
    answer = "It is set to zero, and a loss component is established to reflect the excess of fulfilment cash flows over the expected inflows.",
    explanation = "For onerous contracts, the CSM is eliminated and a loss component is recorded to reflect the excess of fulfilment cash flows over expected inflows."
  ),
  q9 = list(
    answer = "Yes, if future changes in fulfilment cash flows indicate that the group is no longer onerous.",
    explanation = "Reversals are permitted when the group of contracts becomes profitable again."
  ),
  q10 = list(
    answer = "The sum of the fulfilment cash flows and the loss component.",
    explanation = "When the CSM is nil, the LRC includes both the fulfilment cash flows and the loss component."
  ),
  q11 = list(
    answer = "The discount rate at initial recognition of the group of contracts",
    explanation = "The CSM interest accretion uses the discount rate set at initial recognition."
  ),
  q12 = list(
    answer = "When expected future outflows exceed inflows",
    explanation = "A group of contracts is classified as a liability when its fulfilment cash flows reflect a net obligation."
  ),
  q12_part1 = list(
    answer = "B. CU 150",
    explanation = "The CSM is calculated as the net fulfilment cash flows (1,200 - 1,000 - 50)."
  ),
  q12_part2 = list(
    answer = "B. CU 157.5",
    explanation = "The CSM accretion is calculated as 150 × 1.05."
  ),
  q12_part3 = list(
    answer = "A. CU 118.125",
    explanation = "The CSM released is calculated as 157.5 ÷ 4, and the remaining CSM is 157.5 - 39.375."
  ),
  q13 = list(
    answer = "To compensate for non-financial risk uncertainty in future cash flows",
    explanation = "The risk adjustment compensates for non-financial risk uncertainty."
  ),
  q14 = list(
    answer = "Contracts where little is known about emerging experience",
    explanation = "Less knowledge leads to more uncertainty and a higher risk adjustment."
  ),
  q15 = list(
    answer = "Financial risk (e.g. interest rate risk)",
    explanation = "The risk adjustment under IFRS 17 is designed to cover only non-financial risks."
  ),
  q16 = list(
    answer = "Contract B, due to longer exposure to uncertainty",
    explanation = "Longer duration implies greater uncertainty and therefore a higher risk adjustment."
  ),
  q17 = list(
    answer = "Historical premium rate analysis",
    explanation = "Historical premium analysis is not a valid standalone method for calculating risk adjustment."
  ),
  q18 = list(
    answer = "Deferred acquisition costs",
    explanation = "DAC is not separately presented under IFRS 17 — it's included in fulfilment cash flows."
  ),
  q18_part1 = list(
    answer = "B. $11,011,000",
    explanation = "The liability is calculated as Mean + z × StdDev = 10M + 0.674 × 1.5M."
  ),
  q18_part2 = list(
    answer = "C. $1,011,000",
    explanation = "The risk adjustment is the excess over the expected value at 75% confidence."
  ),
  q18_part3 = list(
    answer = "C. $1,922,000",
    explanation = "The risk adjustment increases as the confidence level (and z) increases."
  )  
)


IFRS17Module7Server <- (function(id) {
  moduleServer(id, function(input, output, session) {
    ns <- session$ns

    # Quiz result output
    final_name <- reactiveVal("")

    score <- reactiveVal(0)

    # Feedback functions
    observeEvent(input$submit, {
        removeModal()
        # 1. List out all your question input IDs
        question_ids <- c(
          paste0("q", 1:5),
          paste0("q6_part", 1:4),
          paste0("q", 7:11),
          c("q12", paste0("q12_part", 1:3)),
          paste0("q", 13:17),
          c("q18", paste0("q18_part", 1:3))
        )
        
        # 2. Find which ones are missing
        missing <- vapply(question_ids, function(qid) {
          val <- input[[qid]]
          is.null(val) || length(val) == 0 || val == ""
        }, logical(1))
        
        # 3. If any are missing, show a modal and abort
        if (any(missing)) {
          showModal(modalDialog(
            title   = "Please answer all questions",
            HTML(sprintf(
              "You have %d unanswered question(s): %s.<br><br>Please go back and select your answers before submitting.",
              sum(missing),
              paste(which(missing), collapse = ", ")
            )),
            easyClose = TRUE,
            footer    = modalButton("OK")
          ))
          return()
        }
        
        # 4. (Optional) also check name
        if (is.null(input$participant_name) || input$participant_name == "") {
          showModal(modalDialog(
            title   = "Participant Name Required",
            "Please enter your name before you submit the quiz.",
            easyClose = TRUE,
            footer    = modalButton("OK")
          ))
          return()
        }
        
        # ———————————
        # 5. All answered: clear any existing modal, then run your scoring code
        removeModal()

        final_name(input$participant_name)


        score(0)
        feedback <- list()

    for (qid in names(correct_answers)) {
      correct <- correct_answers[[qid]]$answer
      explanation <- correct_answers[[qid]]$explanation
      user_answer <- input[[qid]]

      if (user_answer == correct) {
        score(score() + 1)
        feedback[[qid]] <- paste0("✅ ", toupper(qid), ": Correct!")
        feedbackSuccess(qid, "Correct!")
      } else {
        feedback[[qid]] <- paste0("❌ ", toupper(qid), ": Your answer was incorrect. The correct answer is '", correct, "'. Explanation: ", explanation)
        feedbackDanger(qid, paste0("Incorrect! Correct answer is: ", correct, ". ", explanation))
      }
    }
        


    output$result <- renderUI({
      total_questions <- length(correct_answers)
      percentage       <- round((score() / total_questions) * 100, 1)
      name             <- isolate(input$participant_name)
      color            <- if (percentage >= 70) "#198754" else "#dc3545"

      tagList(
        div(
          class = "print-area",

          # ——— Certificate Header ———
          div(
            class = "print-title",
            style = "
              text-align:center; 
              padding: 20px;
              border-bottom: 3px solid #0d6efd;
              background-color: #f8f9fa;
              margin-bottom:20px;",
            img(src = "images/ira_logo_.png", style = "height:60px; margin-bottom:10px;"),
            # certificate title
            h1("Certificate of Achievement",
              style = "
                font-family: 'Nunito', sans-serif;
                font-size: 32px;
                margin-bottom: 5px;
                color: #0d6efd;
              "),
                # decorative subtitle
            h4("has successfully completed the IFRS 17 - Discounting, CSM & Risk Adjustment Quiz",
              style = "
                font-family: 'Nunito', sans-serif;
                font-weight: 400;
                font-style: italic;
                margin-top: 0;
                margin-bottom: 20px;
                color: #343a40;
              "),
              # recipient name
          h2(isolate(input$participant_name),
            style = "
              font-family: 'Nunito', sans-serif;
              font-size: 28px;
              margin: 0;
              color: #198754;
            "),
            p(format(Sys.Date(), "%B %d, %Y"), 
            style = "
            font-size:14px;
            margin-top: 10px;
            color: #6c757d;
            ")
          ),  # ← comma!

          # ——— Results Summary Card ———
          div(
            class = "print-summary",
            style = "
              background-color:rgb(172, 167, 167);
              padding: 25px;
              border-radius: 10px;
              box-shadow: 0 4px 12px rgba(0,0,0,0.08);
              font-family: Arial, sans-serif;
            ",
            h3(
              "📊 Results Summary",
              style = "color:#0d6efd; font-weight:600; margin-bottom:20px;"
            ),

            HTML(paste0(
              "<p style='font-size:17px;'><strong>👤 Participant:</strong> ", name, "</p>",
              "<hr style='border-top:1px solid #dee2e6;'>",
              "<p style='font-size:18px;'><strong>Total Score:</strong> ", score(), " / ", total_questions, "</p>",
              "<p style='font-size:18px;'><strong>Percentage Score:</strong> <span style='color:", color, "; font-weight:600;'>", percentage, "%</span></p>"
            )),

            # ——— Detailed Feedback ———
            div(
              style = "margin-top:25px;",
              h4(
                "📘 Detailed Feedback",
                style = "margin-bottom:15px; color:#343a40;"
              ),
              tags$ul(
                lapply(feedback, function(msg) {
                  tags$li(style = "margin-bottom:8px;", HTML(msg))
                })
              )
            ),  # ← comma!

            # ——— Print Button ———
            div(
              style = "text-align:center; margin-top:30px;",
              actionButton(
                ns("print_certificate"),
                "Print Results as PDF",
                icon  = icon("print"),
                class = "control-button-tavnav no-print"
              )
            )

          )  

        )  

      )

    })  
    })

    observeEvent(input$print_certificate, {
      runjs('
        var cert = document.querySelector(".print-area");
        if (!cert) {
          alert("Nothing to print – make sure you have submitted the quiz first.");
        } else {
          // open a blank window
          var w = window.open("", "_blank", "width=800,height=600");
          // build a print-only style to hide .no-print
          var head = `
            <head>
              <title>Participation Certificate</title>
              <style>
                body { margin:20px; font-family:Arial,sans-serif; }
                @media print { .no-print { display: none; } }
              </style>
            </head>`;
          // grab the certificate HTML
          var body = "<body>" + cert.outerHTML +
                    // wrap your button in a no-print div
                    "<div class=\\"no-print\\" style=\\"text-align:center; margin-top:30px;\\">" +
                      "<button onclick=\\"window.print()\\">Print Certificate as PDF</button>" +
                    "</div></body>";
          // write it all
          w.document.write("<!doctype html><html>" + head + body + "</html>");
          w.document.close();
          w.onload = function() {
            w.focus();
            w.print();
          };
        }
      ')
    })

    # create a reactive for the “Next” click
    to_module_8 <- reactive(input$to_module_8)
    # return it so the app can observe it
    to_module_8
  })
})