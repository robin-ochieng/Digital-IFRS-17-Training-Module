# This module is for the IFRS 17 module 7
IFRS17Module7UI <- function(id) {
  ns <- NS(id)
  tagList(
    div(
      class = "section-header",
      h2("📘 Module 7: Discounting CSM and Risk Adjustment", class = "section-title-top")
    ),
   div(class = "module-section",  
        h3("📖 Introduction"),
        p("This module provides an overview of Discounting, Contractual Service Margin (CSM) and Risk Adjustment (RA) under IFRS 17.")
     ),
    div(class = "module-section",  
      h3("📘 Introduction"),
      p("On initial recognition, an entity must measure a group of insurance contracts as the total of:"),
      tags$ul(
        tags$li("the fulfilment cash flows (\"FCF\"), which comprise:"),
        tags$ol(
          tags$li("estimates of future cash flows;"),
          tags$li("an adjustment to reflect the time value of money (\"TVM\") and the financial risks associated with the future cash flows, and a risk adjustment for non-financial risk."),
          tags$li("the contractual service margin (\"CSM\").")
        )
      ),
      img(src = "images/fulfilmentCashFlows.png", alt = "Fulfilment Cash Flows", class = "module-image")
    ),
    div(class = "module-section",
      h3("💡 Discounting"),
      p("This sub-module introduces the fundamental concept of discounting under IFRS 17, emphasizing the importance of adjusting future cash flows to reflect the time value of money. Discounting ensures that the value of expected future payments and receipts are expressed in today’s terms, allowing for accurate liability measurement."),
      p("Under IFRS 17 standards Paragraph 36 covers discounting as a part of fulfilment cash flow and Paragraph 38–39 covers the characteristics discounting must reflect, and paragraph 44(b) and 47 cover the interest accretion on the CSM using locked-in rates while appendix B72 to B85 cover detailed guidance on determining discount rates and yield curves.")
    ),
    div(class = "module-section",
      h4(span(style = "color: #97BC39;", "What is Discounting?")),
      p("Discounting is the process of converting future cash flows into present values. It's based on the idea that money today is worth more than money in the future due to the time value of money."),
      p("The discount rate should reflect characteristics like liquidity, inflation, and dependency on underlying items.")
    ),
    div(class = "module-section",
      h4(span(style = "color: #97BC39;", "Why Are Future Cash Flows Discounted in IFRS 17?")),
      p("To reflect the time value of money and financial risks not already captured in the estimates."),
      h5(span(style = "color: #AF851D;", "Purpose:")),
      tags$ul(
        tags$li("Ensure liabilities are shown realistically on the balance sheet."),
        tags$li("Helps compare cash flows that occur at different times."),
        tags$li("Adjusts for liquidity and financial risk.")
      )
    ),
    div(class = "module-section",
      h3("📉 Discounting Approaches"),
      p("IFRS 17 has provided two approaches for the determination of discount rates for insurers as follows:"),

      # Bottom-Up Approach
      tags$h4(span(style = "color:#97BC39;", "a) Bottom-Up Approach")),
      tags$strong("How It Works:"),
      tags$ol(
        tags$li("Start with a risk-free yield curve (e.g., government bonds)"),
        tags$li("Add a liquidity premium if the insurance contracts are illiquid")
      ),

      # Top-Down Approach
      tags$h4(span(style = "color:#97BC39;", "b) Top-down Approach")),
      tags$strong("How It Works:"),
      tags$ol(
        tags$li("Start with the total yield of a reference asset portfolio"),
        tags$li("Eliminates components not relevant to insurance (e.g., credit risk, other market risks)")
      ),

      p("IFRS 17 requires that discount rates exclude market variables that don’t affect the cash flows of the insurance contract, even if these variables are reflected in market prices. This ensures accuracy in aligning economic reality with liability measurement."),
      img(src = "images/discountingApproaches.png", alt = "Discounting Approaches", class = "module-image")
    ),
    div(class = "module-section",
      h3("📉 Key Discounting Concepts in IFRS 17"),
      tags$table(class = "table key-table", style = "width:100%",
        tags$thead(
          tags$tr(
            tags$th("Concept"),
            tags$th("Explanation")
          )
        ),
        tags$tbody(
          tags$tr(
            tags$td("Time Value of Money"),
            tags$td("Money today is more valuable than money tomorrow.")
          ),
          tags$tr(
            tags$td("Discount Rate"),
            tags$td("The rate used to bring future cash flows to the present value.")
          ),
          tags$tr(
            tags$td("Bottom-Up Approach"),
            tags$td("Start with a risk-free rate, then adjust for liquidity.")
          ),
          tags$tr(
            tags$td("Top-Down Approach"),
            tags$td("Start with a portfolio yield, then remove credit and other risks not relevant to the insurance contract.")
          ),
          tags$tr(
            tags$td("Liquidity Premium"),
            tags$td("Adjustment made to a liquid risk-free yield curve to reflect differences between liquidity characteristics of the financial instruments that underlie the risk-free rates and insurance contracts.")
          ),
          tags$tr(
            tags$td("Market Consistency"),
            tags$td("Use observable market data only if it reflects the characteristics of the liability.")
          )
        )
      )
    ),

    div(class = "module-section",
      h3("📉 Contractual Service Margin"),
      p("This sub-module provides a comprehensive overview of how the CSM is calculated, adjusted, and released."),
      p("Under IFRS 17, the following tables show the paragraphs and appendix that cover CSM:"),
      tags$table(class = "table key-table", style = "width:100%",
        tags$thead(
          tags$tr(
            tags$th("Paragraph"),
            tags$th("What It Covers")
          )
        ),
        tags$tbody(
          tags$tr(
            tags$td("17.38–39"),
            tags$td("Fulfilment cash flows (FCF), basis for CSM")
          ),
          tags$tr(
            tags$td("17.43"),
            tags$td("No gain at initial recognition — CSM absorbs positive FCF")
          ),
          tags$tr(
            tags$td("17.44–45"),
            tags$td("CSM changes: interest, release, updates to cash flows")
          ),
          tags$tr(
            tags$td("17.46"),
            tags$td("Onerous contracts: CSM set to zero, loss component created")
          ),
          tags$tr(
            tags$td("17.47"),
            tags$td("Use of locked-in discount rate for interest accretion")
          ),
          tags$tr(
            tags$td("B94–B96"),
            tags$td("Allocation of CSM to coverage periods")
          ),
          tags$tr(
            tags$td("B97–B100"),
            tags$td("Adjustments for changes in estimates or derecognition")
          )
        )
      )
    ),

  div(class = "module-section",
    h3("What is the Contractual Service Margin (CSM)?"),
    p("CSM represents the unearned profit an insurance company expects to earn as it provides coverage over the life of an insurance contract. It is part of the Liability for Remaining Coverage (LRC)."),
    p(tags$b("You can think of the CSM like this:"), style = "margin-top:15px;"),
    p(em("Imagine selling a 4-year gym membership today. The full fee is paid upfront, but you haven’t provided the service yet. The profit you’re expecting to make is spread over the 4 years – that’s your CSM."))
  ),

  div(class = "module-section",
    h3("CSM at initial recognition"),
    p("When a group of insurance contracts is first recognised (usually at the point of inception), IFRS 17 requires calculating a “Contractual Service Margin (CSM)” if the contract is expected to be profitable."),
    img(src = "images/csmatInitialRecognition.png", alt = "CSM at Initial Recognition", class = "module-image"),
    p(em("If the result is positive → this becomes the initial CSM (unearned profit). If the result is negative → the contract is onerous and no CSM is recognised. Instead, a loss component is created."))
  ),

  div(class = "module-section",
    h4(style = "color:#94B43B; font-weight:600;", "CSM at Subsequent Measurement"),
    p("Once the initial CSM is set up, it’s not static. It gets adjusted over time to reflect:"),
    tags$ol(
      tags$li(
        tags$b("Interest Accretion:"), 
        " CSM increases over time using the discount rate at initial recognition."
      ),
      tags$li(
        tags$b("Profit Release (reduction):"),
        " CSM is released as revenue as the insurer provides coverage. Usually done evenly unless another pattern better reflects the service."
      ),
      tags$li(
        tags$b("Adjustments for Changes in Estimates:"),
        " If assumptions about future cash flows change (e.g. fewer claims expected), the CSM is adjusted, but only if the contract is not onerous."
      ),
      tags$li(
        tags$b("Onerous Contracts:"),
        " If the group becomes loss-making: CSM is set to zero. A loss component is recognised for the shortfall."
      ),
      p("A loss component can be reversed in subsequent periods if there are favorable changes in the fulfilment cash flows related to future service, indicating that the group of contracts is no longer onerous.")
    )
  ),

    div(class = "module-section",
      h3("Risk Adjustment"),
      p("This sub-module looks at Risk Adjustment, which is one of the key components in measuring insurance contract liabilities."),
      p("IFRS 17 under paragraphs 37 covers risk adjustment as part of fulfilment cash flows and Paragraph 44 covers the disclosure of method and confidence level while appendix B86 to B92 covers the principles, methods and factors affecting risk adjustment."),
      p(
        tags$em(style = "color:#b6a600; font-weight:600;", "What is Risk Adjustment in IFRS 17?")
      ),
      p("The Risk Adjustment for non-financial risk represents the compensation an insurer requires for the uncertainty about the amount and timing of future cash flows from insurance contracts — due to non-financial risks like mortality, morbidity, lapse, and expense risks."),
      p("While the fulfilment cash flows reflect expected values, the risk adjustment accounts for the inherent variability and uncertainty in those expectations. It ensures that liabilities are not just a neutral best estimate but also include a margin for risk—aligned with the insurer’s own risk appetite and risk-bearing capacity.")
    ), 

    div(class = "module-section",
      h4(style = "color:#94B43B; font-weight:600;", "Factors That Influence the Risk Adjustment"),
      p("Under IFRS 17, the Risk Adjustment (RA) is influenced by the degree of uncertainty in non-financial risks. These include:"),

      # 1. Degree of Uncertainty
      tags$p(tags$strong(style = "color:#73A500;", "1. Degree of Uncertainty")),
      p("More uncertainty is equal to Higher RA"),
      p("This includes uncertainty about:"),
      tags$ul(
        tags$li("Timing of cash flows"),
        tags$li("Amount of future claims"),
        tags$li("Claims development")
      ),

      # 2. Type of Risk
      tags$p(tags$strong(style = "color:#73A500;", "2. Type of Risk")),
      p("Different non-financial risks contribute differently:"),
      tags$ul(
        tags$li("Morbidity/Mortality Risk: Variability in health/death rates."),
        tags$li("Lapse Risk: Uncertainty in policyholder behavior."),
        tags$li("Expense Risk: Changes in administration costs.")
      ),

      # 3. Contract Duration
      tags$p(tags$strong(style = "color:#73A500;", "3. Contract Duration")),
      p("Longer duration = Higher RA"),
      tags$em("Why? Because longer exposure → more uncertainty → more compensation needed."),

      # 4. Quality of Data / Knowledge of Risks
      tags$p(tags$strong(style = "color:#73A500;", "4. Quality of Data / Knowledge of Risks")),
      p("If the insurer has limited data or is less confident about assumptions, the RA is higher."),
      tags$em("Less knowledge = higher compensation required for bearing risk."),

      # 5. Diversification and Risk Pooling
      tags$p(tags$strong(style = "color:#73A500;", "5. Diversification and Risk Pooling")),
      p("A larger and more diversified portfolio tends to have lower RA per contract."),
      p("Risks that can be pooled or offset across contracts reduce overall uncertainty."),

      # 6. Reinsurance
      tags$p(tags$strong(style = "color:#73A500;", "6. Reinsurance")),
      p("If risk is ceded to a reinsurer, the RA for the cedant is lower."),
      p("The reinsurer still carries RA for their accepted portion."),
    
        #7. Risk Appetite and Confidence Level
      tags$p(tags$strong(style = "color:#73A500;", "7. Risk Appetite and Confidence Level")),
      p("A more risk-averse insurer will choose a higher confidence level, leading to a higher RA."),
      img(src = "images/riskAdjustmentFactors.png", alt = "Risk Adjustment Factors", class = "module-image")
    ),

    div(class = "module-section",
      h4(style = "color:#94B43B; font-weight:600;", "Methods of determining Risk Adjustment"),
      p("IFRS 17 does not prescribe a specific method — but it requires the RA to:"),
      tags$ul(
        tags$li("Reflect compensation for non-financial risk uncertainty"),
        tags$li("Be explicitly and separately disclosed"),
        tags$li("Be consistent with how the entity would assess its own risk preferences")
      ),
      img(src = "images/riskAdjustmentMethods.png", alt = "Risk Adjustment Methods", class = "module-image")
      ),
    div(class = "module-section",
      h3("The 3 most common approaches:"),
      
      tags$ol(
        tags$li(
          tags$span(style = "font-style:italic; font-weight:600;", 
                    "Confidence Level Approach (Quantile Method)"),
          p("This method sets the RA so that the present value of future cash flows covers obligations with a given confidence level (e.g., 75%, 90%).")
        ),
        
        tags$li(
          tags$span(style = "font-style:italic; font-weight:600;", 
                    "Cost of Capital Method"),
          p("Calculates RA based on the cost of holding capital to support non-financial risks over time."),
          tags$div(
            tags$strong("Key Components:"),
            tags$ul(
              tags$li("Required capital amount (e.g. 99.5% VaR)"),
              tags$li("Holding period (e.g. contract lifetime)"),
              tags$li("Cost of capital rate (e.g. 6%)")
            )
          )
        ),
        
        tags$li(
          tags$span(style = "font-style:italic; font-weight:600;", 
                    "Conditional Tail Expectation (CTE)"),
          p("Also referred to as the tail value at risk; it reflects the average of all worse outcomes beyond a certain threshold.")
        ),
        img(src = "images/riskAdjustmentApproaches.jpeg", alt = "Risk Adjustment Approaches", class = "module-image")
      )
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

    div(style = "display: flex; justify-content: center; margin-top: 20px;",
      tags$table(class = "table table-bordered", style = "width: 300px; text-align: center;",
        tags$thead(
          tags$tr(
            tags$th("Year", style = "background-color: #B3850D; color: white;"),
            tags$th("Expected Cash Flow", style = "background-color: #B3850D; color: white;")
          )
        ),
        tags$tbody(
          tags$tr(
            tags$td("1", style = "background-color: #97BC39; color: white;"),
            tags$td("$1,000")
          ),
          tags$tr(
            tags$td("2", style = "background-color: #97BC39; color: white;"),
            tags$td("$1,200")
          ),
          tags$tr(
            tags$td("3", style = "background-color: #97BC39; color: white;"),
            tags$td("$1,500")
          )
        )
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