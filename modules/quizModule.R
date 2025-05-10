# modules/quizModule.R

# ---- UI ----
IFRS17QuizUI <- function(id) {
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
    tags$div(
        class = "section-header",
        h2("📘 IFRS 17 Quiz – Section 1: Introduction"),
        p("Answer the following questions to test your understanding of IFRS 17 fundamentals.")
    ),

    shinyWidgets::progressBar(
        id = ns("quiz_progress"),
        value = 0,
        total = 19,
        display_pct = TRUE,
        striped = TRUE,
        status = "success"
        ),

    box(
        title = "Participant Information",
        status = "white", solidHeader = TRUE, width = 12,
        p("Please enter your name."),
        textInput(ns("participant_name"), "Enter your Name:")
    ),


    box(
      title = "1. What is the global date of Initial Application of IFRS 17 for insurers under supervision?",
      status = "white", solidHeader = TRUE, width = 12,
      radioButtons(ns("q1"), label = NULL, choices = c(
        "31 Dec 2023", "1 Jan 2022", "1 Jan 2023", "31 Dec 2021"))
    ),
    
    box(
      title = "2. Which method is NOT expected to be seen as an IFRS 17 application method?",
      status = "white", solidHeader = TRUE, width = 12,
      radioButtons(ns("q2"), label = NULL, choices = c(
        "Premium Allocation Approach", "General Allocation Approach", 
        "General Measurement Model", "Variable Fee Approach"))
    ),
    
    box(
      title = "3. Which Balance Sheet entry is NOT expected under IFRS 17?",
      status = "white", solidHeader = TRUE, width = 12,
      radioButtons(ns("q3"), label = NULL, choices = c(
        "Insurance Contract Liabilities", "Premium Receivables from Policyholders",
        "Reinsurance Contract Assets", "Insurance Contract Assets"))
    ),
    
    box(
      title = "4. Which Profit & Loss entry is NOT expected under IFRS 17?",
      status = "white", solidHeader = TRUE, width = 12,
      radioButtons(ns("q4"), label = NULL, choices = c(
        "Gross Written Premium", "Management Expenses", 
        "Commissions (Insurance Acquisition Costs)", "Incurred Claims"))
    ),
    
    tags$div(
        class = "section-header",
        h2("📙 IFRS 17 Quiz – Section 2: Concepts"),
        p("Explore key terminologies, accounting treatments, and financial implications under IFRS 17.")
    ),
    box(
    title = "5. What does the CSM reserve represent? (2 marks)",
    status = "white", solidHeader = TRUE, width = 12,
    radioButtons(ns("q5"), label = NULL,
                choices = c("Unpaid Claims", "Unearned Profit", "Earned Premium", "Risk Adjustment"))
    ),   

    box(
    title = "6. The Risk Adjustment margin can be considered as: (2 marks)",
    status = "white", solidHeader = TRUE, width = 12,
    radioButtons(ns("q6"), label = NULL,
                choices = c("Part of Gross Written Premium", "Part of Shareholder Funds", "Part of Premium & Claims Reserves", "Part of Intangible Assets"))
    ),

    box(
    title = "7. The Liability for Incurred Claims (LIC) is composed of: (2 marks)",
    status = "white", solidHeader = TRUE, width = 12,
    radioButtons(ns("q7"), label = NULL,
                choices = c(
                    "Liability for Remaining Coverage & Risk Adjustment Margin",
                    "Outstanding Claim Reserves and Incurred But Not Reported Reserves & Risk Adjustment for Non-Financial Risks",
                    "Contractual Service Margin & Risk Adjustment Margin for Non-Financial Risks",
                    "Premium & Risk Adjustment Margin for Non-Financial Risks"))
    ),

    box(
    title = "8. How is discounting of cashflows monitored? (2 marks)",
    status = "white", solidHeader = TRUE, width = 12,
    radioButtons(ns("q8"), label = NULL,
                choices = c(
                    "Through Contractual Service Margin",
                    "Through Insurance Finance Expense",
                    "Through Risk Adjustment Margin for Non-Financial Risks",
                    "Through Shareholder Funds"))
    ),

    box(
    title = "9. Insurance Revenue can be compared to: (2 marks)",
    status = "white", solidHeader = TRUE, width = 12,
    radioButtons(ns("q9"), label = NULL,
                choices = c(
                    "Gross Written Premium", "Gross Earned Premium", "Net Earned Premium", "New Written Premium"))
    ),

    box(
    title = "10. Spirit of IFRS 17 on reinsurance contracts: (2 marks)",
    status = "white", solidHeader = TRUE, width = 12,
    radioButtons(ns("q10"), label = NULL,
                choices = c(
                    "Combine all reinsurance and policyholder cashflows to get a net position",
                    "Separate all reinsurance cashflows from policyholder cashflows and report the net cost of reinsurance separately",
                    "Combine only premium reinsurance cashflows and policyholder cashflows",
                    "Combine all claims, acquisition costs and gross premium cashflows"))
    ),

    box(
    title = "11. Time value of money and claim reserves (2 marks)",
    status = "white", solidHeader = TRUE, width = 12,
    radioButtons(ns("q11"), label = NULL,
                choices = c(
                    "The insurer has the choice of discounting or not regardless of when the claim is expected to be paid",
                    "All claims expected to be paid after a year should be discounted and those expected to be paid in less than
                        one year should also be discounted.",
                    "All claims expected to be paid after a year should be discounted and those expected to be paid in less than one year (can be discounted or not depending on the choice of the insurer)",
                    "All claims must be discounted regardless of expected payment date."))
    ),

    box(
    title = "12. Why should IFRS 17 be encouraged? (2 marks)",
    status = "white", solidHeader = TRUE, width = 12,
    radioButtons(ns("q12"), label = NULL,
                choices = c(
                    "Not capitalizing Premium Receivables in Balance Sheet",
                    "Ignoring Uncollected Premium in Income",
                    "It considers contracts only if claims have been paid",
                    "It discounts claims"))
    ),

    box(
    title = "13. How to identify discounting loss in P&L? (2 marks)",
    status = "white", solidHeader = TRUE, width = 12,
    radioButtons(ns("q13"), label = NULL,
                choices = c(
                    "Insurance Revenue", "Insurance Service Expense",
                    "Net Financial Results", "Insurance Service Results"))
    ),

    box(
    title = "14. Under the General Measurement Model (GMM), the insurance contract liabilities or assets are composed of (2 marks)",
    status = "white", solidHeader = TRUE, width = 12,
    radioButtons(ns("q14"), label = NULL,
                choices = c(
                    "Liability for Remaining Coverage & Risk Adjustment Margin",
                    "Liability for Remaining Coverage & Liability for Incurred Claims",
                    "Contractual Service Margin & Liability for Incurred Claims",
                    "Premium, Outstanding Claim Reserves and Incurred But Not Reported Reserves"))
    ),

    tags$div(
        class = "section-header",
        h2("📗 IFRS 17 Quiz – Section 3: Practical – Wakanda Case Study"),
        p("Answer the following questions based on this realistic scenario in Wakanda.")
    ),
    box(
    title = "Case Study: GoodInsurer in Wakanda",
    status = "white", solidHeader = TRUE, width = 12,
    p("In the virtual world of Wakanda, there are two companies called GoodInsurer and BadInsurer. The government of
    Wakanda has managed to keep interest rates at zero percent (0%) for all bonds. The people are flourishing and
    very happy. The Currency of Wakanda is Wsh."),
    p("GoodInsurer has launched a 5-Year endowment life insurance product which pays either a death benefit or a
    maturity benefit of Wsh 1,000,000. The cost of the product is a premium of Wsh 400,000 per annum."),
    p("The product is exclusively sold to retired footballers, athletes & other professionals who retire at age 40 years."),
    p("The Government Actuary of Wakanda, Mr Challa, is mandated to sets the mortality rates and has said that each
    policyholder who is age 40-45 years should contribute Wsh 200,000 per year to make the product sustainable."),
    p("In addition, based on the risk appetite of the Shareholders of GoodInsurer, the Risk Adjustment for Non-Financial
    was set at Wsh 50,000. The Board now feels that they are 85% sure that the cost per policyholder will not exceed
    Wsh 250,000 per year (Wsh 200,000 as the cost of claims (as the estimate provided by the Government Actuary) +
    Wsh 50,000 for the Risk Adjustment Margin to give the investors comfort that their profits are protected). They
    expect to release Wsh 10,000 from the Risk Adjustment Margin every per year if there are no significant claims)."),
    p("GoodInsurer uses internal staff to sell its product. The entire department earns a salary of Wsh 1 billion per year. In
    addition, Management has told the Board that expenses that can be attributable to this product are Wsh 2 billion
    while other overheads which cannot be attributable to this product are Wsh 3 billion."),
    p("Based on the sales projection, each product will be allocated Wsh 50,000 in the first year only for acquisition costs
    (commission payable) and Wsh 100,000 every year in attributable expenses."),
    p("The Board asked what the theoretical non-attributable expenses of Wsh 3 billion would mean for the product and
    they were informed that this would be Wsh 200,000 per product."),
    p("GoodInsurer sold 10,000 policies in the first year and sent the usual end of year report to the Insurance Regulatory
    Authority of Wakanda (IRAW).")
    ),
    br(),
    p("Answer the following questions based on this case study:"),

    box(
    title = "15. What is the Contractual Service Margin (CSM) expected to be seen in the accounts for this product by the IRAW for GoodInsurer? (6 marks)",
    status = "white", solidHeader = TRUE, width = 12,
    textAreaInput(ns("q15"), label = NULL, rows = 2, placeholder = "e.g., Wsh 4B")
    ),

    box(
    title = "16. If no new policy was sold after the first year, what is the CSM expected in the second year? (4 marks)",
    status = "white", solidHeader = TRUE, width = 12,
    textAreaInput(ns("q16"), label = NULL, rows = 2, placeholder = "eg., Wsh 3.2B")
    ),

    box(
    title = "17. In Year 3, the shareholders of GoodInsurer feel that the footballers are buying very fast
                cars and may have more claims. There is no evidence yet that the claims will increase. The
                Board of GoodInsurer held a meeting and approved the Risk Adjustment to be held at a
                higher confidence level of 95%. This means that the Original Risk Margin would have been
                Wsh 100,000 instead of Wsh 50,000. Calculate the CSM for Year 3? (6 marks)",
    status = "white", solidHeader = TRUE, width = 12,
    textAreaInput(ns("q17"), label = NULL, rows = 2, placeholder = "e.g., Wsh 1.47B")
    ),

    box(
    title = "18. What is the Insurance Finance Expenses expected in Year 1 to Year 5? (5 marks)",
    status = "white", solidHeader = TRUE, width = 12,
    textAreaInput(ns("q18"), label = NULL, rows = 2, placeholder = "e.g., Wsh 0")
    ),

    box(
    title = "19. BadInsurer decided to undercut and sell the same product at 50% of the premium.
                Calculate the Loss Component expected to be held on the insurer? (5 marks)",
    status = "white", solidHeader = TRUE, width = 12,
    textAreaInput(ns("q19"), label = NULL, rows = 2, placeholder = "e.g., Wsh 6B")
    ),

    box(
    title = tags$div(
        icon("comments"), "We Value Your Feedback",
        style = "font-weight: 600; font-size: 18px;"
    ),
    status = "white", solidHeader = TRUE, width = 12,
    div(style = "margin-bottom: 15px;",
        sliderInput(
            ns("feedback_rating"),
            label = div(
            "How would you rate your overall experience?",
            tags$small("(0 = Very Poor, 100 = Excellent)", style = "color: #6c757d;")
            ),
            min = 0, max = 100, value = 50, step = 1, ticks = FALSE
        )
    ),
    div(style = "margin-bottom: 15px;",
        textAreaInput(
            ns("feedback_comment"),
            label = "Additional Comments (Optional):",
            rows = 4,
            placeholder = "We appreciate your thoughts and suggestions..."
        )
    ),
    div(style = "text-align: right;",
        actionButton(
            ns("submit_feedback"),
            label = "Submit Feedback",
            icon = icon("paper-plane"),
            class = "btn btn-success control-button-submit"
        )
    )
    ),


    actionButton(ns("submit"), "Submit Quiz", icon = icon("check"), class = "btn-primary control-button-submit" ),
    br(), 
    br(),
    uiOutput(ns("result")),
    conditionalPanel(
        condition = "output.allowCertificate === true",
        helpText("🎉 Congratulations! You are eligible to download your certificate."),
        downloadButton(ns("download_certificate"), "Download Certificate", icon = icon("download"))
        )
  )
}

# ---- Server ----
IFRS17QuizServer <- function(id) {
  moduleServer(id, function(input, output, session) {

    observeEvent(input$submit_feedback, {
    showModal(modalDialog(
        title = "Thank You!",
        "Your feedback has been recorded. We appreciate your input.",
        easyClose = TRUE
    ))
    })


    cert_ready <- reactiveVal(FALSE)
    final_name <- reactiveVal("")

    score <- reactiveVal(0)
    section1_score <- reactiveVal(0)
    section2_score <- reactiveVal(0)
    section3_score <- reactiveVal(0)
    # Allow certificate download only if the score is above 60%
    observeEvent(input$submit, {
        if (input$participant_name == "") {
        showModal(modalDialog("Please enter your Name to receive a certificate.", easyClose = TRUE))
        return()
        }

        final_name(input$participant_name)


        score(0)
        section1_score(0)
        section2_score(0)
        section3_score(0)
        feedback <- list()


      # Correct answers
      # Q1
      if (input$q1 == "1 Jan 2023") {
        score(score() + 1)
        section1_score(section1_score() + 1)
        feedback[[1]] <- "✅ Q1: Correct!"
        feedbackSuccess("q1", "Correct!")
      } else {
        feedback[[1]] <- "❌ Q1: Correct answer is '1 Jan 2023'. IFRS 17 became effective on 1 January 2023 to align global accounting for insurance contracts."
        feedbackDanger("q1", "Incorrect! Correct answer is '1 Jan 2023'. IFRS 17 became effective on 1 January 2023 to align global accounting for insurance contracts.")
      }
       

        # Q2
      if (input$q2 == "General Allocation Approach") {
        score(score() + 1)
        section1_score(section1_score() + 1)
        feedback[[2]] <- "✅ Q2: Correct!"
        feedbackSuccess("q2", "Correct!")
      } else {
        feedback[[2]] <- "❌ Q2: Correct answer is 'General Allocation Approach'. This is not a recognized measurement method under IFRS 17."
        feedbackDanger("q2", "Incorrect! Correct answer is 'General Allocation Approach'. This is not a recognized measurement method under IFRS 17.")
      }
       
      
        # Q3
      if (input$q3 == "Premium Receivables from Policyholders") {
        score(score() + 1)
        section1_score(section1_score() + 1)
        feedback[[3]] <- "✅ Q3: Correct!"
        feedbackSuccess("q3", "Correct!")
      } else {
        feedback[[3]] <- "❌ Q3: Correct answer is 'Premium Receivables from Policyholders'. Under IFRS 17, premiums are not treated as receivables but rather as part of the contractual service margin."
        feedbackDanger("q3", "Incorrect! Correct answer is 'Premium Receivables from Policyholders'. Under IFRS 17, premiums are not treated as receivables but rather as part of the contractual service margin.")
      }
       
      
        # Q4
      if (input$q4 == "Gross Written Premium") {
        score(score() + 1)
        section1_score(section1_score() + 1)
        feedback[[4]] <- "✅ Q4: Correct!"
        feedbackSuccess("q4", "Correct!")
      } else {
        feedback[[4]] <- "❌ Q4: Correct answer is 'Gross Written Premium'. IFRS 17 replaces gross premium with 'Insurance Revenue' to align income recognition with services provided."
        feedbackDanger("q4", "Incorrect! Correct answer is 'Gross Written Premium'. IFRS 17 replaces gross premium with 'Insurance Revenue' to align income recognition with services provided.")
      }
       


        # Section 2
        # Q5
        if (input$q5 == "Unearned Profit") {
            score(score() + 1)
            section2_score(section2_score() + 1)
            feedback[[5]] <- "✅ Q5: Correct!"
            feedbackSuccess("q5", "Correct!")
        } else {
            feedback[[5]] <- "❌ Q5: Correct answer is 'Unearned Profit'. The Contractual Service Margin (CSM) represents the unearned profit that will be recognized over the life of the insurance contract."
            feedbackDanger("q5", "Incorrect! Correct answer is 'Unearned Profit'. The Contractual Service Margin (CSM) represents the unearned profit that will be recognized over the life of the insurance contract.")
        }
       

        # Q6
        if (input$q6 == "Part of Premium & Claims Reserves") {
            score(score() + 1)
            section2_score(section2_score() + 1)
            feedback[[6]] <- "✅ Q6: Correct!"
            feedbackSuccess("q6", "Correct!")
        } else {
            feedback[[6]] <- "❌ Q6: Correct answer is 'Part of Premium & Claims Reserves'. The Risk Adjustment reflects uncertainty and is considered part of the insurance liability."
            feedbackDanger("q6", "Incorrect! Correct answer is 'Part of Premium & Claims Reserves'. The Risk Adjustment reflects uncertainty and is considered part of the insurance liability.")
        }
        

            # Q7
        if (input$q7 == "Outstanding Claim Reserves and Incurred But Not Reported Reserves & Risk Adjustment for Non-Financial Risks") {
            score(score() + 1)
            section2_score(section2_score() + 1)
            feedback[[7]] <- "✅ Q7: Correct!"
            feedbackSuccess("q7", "Correct!")
        } else {
            feedback[[7]] <- "❌ Q7: Correct answer is 'Outstanding Claim Reserves and IBNR & Risk Adjustment'. These represent the components of the Liability for Incurred Claims (LIC)."
            feedbackDanger("q7", "Incorrect! Correct answer is 'Outstanding Claim Reserves and IBNR & Risk Adjustment'. These represent the components of the Liability for Incurred Claims (LIC).")
        }
        

            # Q8
        if (input$q8 == "Through Insurance Finance Expense") {
            score(score() + 1)
            section2_score(section2_score() + 1)
            feedback[[8]] <- "✅ Q8: Correct!"
            feedbackSuccess("q8", "Correct!")
        } else {
            feedback[[8]] <- "❌ Q8: Correct answer is 'Through Insurance Finance Expense'. This component captures the effect of discounting on expected future cash flows as time passes."
            feedbackDanger("q8", "Incorrect! Correct answer is 'Through Insurance Finance Expense'. This component captures the effect of discounting on expected future cash flows as time passes.")
        }
        

            # Q9    
        if (input$q9 == "Gross Earned Premium") {
            score(score() + 1)
            section2_score(section2_score() + 1)
            feedback[[9]] <- "✅ Q9: Correct!"
            feedbackSuccess("q9", "Correct!")
        } else {
            feedback[[9]] <- "❌ Q9: Correct answer is 'Gross Earned Premium'. IFRS 17's 'Insurance Revenue' is conceptually aligned with gross earned premium, based on services provided."
            feedbackDanger("q9", "Incorrect! Correct answer is 'Gross Earned Premium'. IFRS 17's 'Insurance Revenue' is conceptually aligned with gross earned premium, based on services provided.")
        }
        

            # Q10
        if (input$q10 == "Separate all reinsurance cashflows from policyholder cashflows and report the net cost of reinsurance separately") {
            score(score() + 1)
            section2_score(section2_score() + 1)
            feedback[[10]] <- "✅ Q10: Correct!"
            feedbackSuccess("q10", "Correct!")
        } else {
            feedback[[10]] <- "❌ Q10: Correct answer is 'Separate all reinsurance cashflows from policyholder cashflows and report the net cost of reinsurance separately'. IFRS 17 requires reinsurance contracts to be presented separately from direct insurance contracts to reflect their different nature."
            feedbackDanger("q10", "Incorrect! Correct answer is 'Separate all reinsurance cashflows from policyholder cashflows and report the net cost of reinsurance separately'. IFRS 17 requires reinsurance contracts to be presented separately from direct insurance contracts to reflect their different nature.")
        }
        

            # Q11
        if (input$q11 == "All claims expected to be paid after a year should be discounted and those expected to be paid in less than one year (can be discounted or not depending on the choice of the insurer)") {
            score(score() + 1)
            section2_score(section2_score() + 1)
            feedback[[11]] <- "✅ Q11: Correct!"
            feedbackSuccess("q11", "Correct!")
        } else {
            feedback[[11]] <- "❌ Q11: Correct answer is 'All claims expected to be paid after a year should be discounted and those expected to be paid in less than one year (can be discounted or not depending on the choice of the insurer)'. IFRS 17 introduces flexibility in discounting short-term claims but mandates it for long-term claims."
            feedbackDanger("q11", "Incorrect! Correct answer is 'All claims expected to be paid after a year should be discounted and those expected to be paid in less than one year (can be discounted or not depending on the choice of the insurer)'. IFRS 17 introduces flexibility in discounting short-term claims but mandates it for long-term claims.")
        }
        

            # Q12
        if (input$q12 == "Ignoring Uncollected Premium in Income") {
            score(score() + 1)
            section2_score(section2_score() + 1)
            feedback[[12]] <- "✅ Q12: Correct!"
            feedbackSuccess("q12", "Correct!")
        } else {
            feedback[[12]] <- "❌ Q12: Correct answer is 'Ignoring Uncollected Premium in Income'. IFRS 17 prohibits recognizing revenue until it's earned through services, not based on premium billing or receipts."
            feedbackDanger("q12", "Incorrect! Correct answer is 'Ignoring Uncollected Premium in Income'. IFRS 17 prohibits recognizing revenue until it's earned through services, not based on premium billing or receipts.")
        }
        

            # Q13
        if (input$q13 == "Net Financial Results") {
            score(score() + 1)
            section2_score(section2_score() + 1)
            feedback[[13]] <- "✅ Q13: Correct!"
            feedbackSuccess("q13", "Correct!")
        } else {
            feedback[[13]] <- "❌ Q13: Correct answer is 'Net Financial Results'. IFRS 17 isolates the effect of discounting from insurance service results and reports it in financial results."
            feedbackDanger("q13", "Incorrect! Correct answer is 'Net Financial Results'. IFRS 17 isolates the effect of discounting from insurance service results and reports it in financial results.")
        }
        

            # Q14
        if (input$q14 == "Liability for Remaining Coverage & Liability for Incurred Claims") {
            score(score() + 1)
            section2_score(section2_score() + 1)
            feedback[[14]] <- "✅ Q14: Correct!"
            feedbackSuccess("q14", "Correct!")
        } else {
            feedback[[14]] <- "❌ Q14: Correct answer is 'Liability for Remaining Coverage & Liability for Incurred Claims'. These are the two key components of insurance contract liabilities under the General Measurement Model (GMM)."
            feedbackDanger("q14", "Incorrect! Correct answer is 'Liability for Remaining Coverage & Liability for Incurred Claims'. These are the two key components of insurance contract liabilities under the General Measurement Model (GMM).")
        }
        

        # Section 3
            # Q15
        if (tolower(trimws(input$q15)) %in% c("wsh 4b", "4b", "wsh 4b/0", "4b/0")) {
            score(score() + 1)
            section3_score(section3_score() + 1)
            feedback[[length(feedback) + 1]] <- "✅ Q15: Correct!"
            feedbackSuccess("q15", "Correct!")
        } else {
            feedback[[length(feedback) + 1]] <- "❌ Q15: Correct answer is 'Wsh 4B'. This represents 10,000 policies × Wsh 400,000 profit margin (CSM) per policy."
            feedbackDanger("q15", "Incorrect! Correct answer is 'Wsh 4B'. This represents 10,000 policies × Wsh 400,000 profit margin (CSM) per policy.")
        }
        

            # Q16
        if (tolower(trimws(input$q16)) %in% c("wsh 3.2b", "3.2b", "wsh 3.2b/0", "3.2b/0")) {
            score(score() + 1)
            section3_score(section3_score() + 1)
            feedback[[length(feedback) + 1]] <- "✅ Q16: Correct!"
            feedbackSuccess("q16", "Correct!")
        } else if (tolower(trimws(input$q16)) %in% c("wsh 3.2b/0", "3.2b/0")) {
            score(score() + 1)
            section3_score(section3_score() + 1)
        feedback[[length(feedback) + 1]] <- "✅ Q16: Correct! (Alternative answer)"
        feedbackSuccess("q16", "Correct! (Alternative answer)")
        } else if (tolower(trimws(input$q16)) %in% c("wsh 3.2b/0 all years", "3.2b/0 all years")) {
        } else {
        feedback[[length(feedback) + 1]] <- "❌ Q16: Correct answer is 'Wsh 3.2B'. The CSM is released evenly over 5 years = Wsh 800M/year, so Wsh 4B – Wsh 800M = Wsh 3.2B."
        feedbackDanger("q16", "Incorrect! Correct answer is 'Wsh 3.2B'. The CSM is released evenly over 5 years = Wsh 800M/year, so Wsh 4B – Wsh 800M = Wsh 3.2B.")
        }
        

            # Q17
        if (tolower(trimws(input$q17)) %in% c("wsh 1.47b", "1.47b", "wsh 1.47b/0", "1.47b/0")) {
            score(score() + 1)
            section3_score(section3_score() + 1)
        feedback[[length(feedback) + 1]] <- "✅ Q17: Correct!"
        feedbackSuccess("q17", "Correct!")
        } else if (tolower(trimws(input$q17)) %in% c("wsh 1.47b/0", "1.47b/0")) {
            score(score() + 1)
            section3_score(section3_score() + 1)
        feedback[[length(feedback) + 1]] <- "✅ Q17: Correct! (Alternative answer)" 
        } else {
        feedback[[length(feedback) + 1]] <- "❌ Q17: Correct answer is 'Wsh 1.47B'. The higher Risk Adjustment (Wsh 100,000 – 50,000) reduces the CSM further."
        feedbackDanger("q17", "Incorrect! Correct answer is 'Wsh 1.47B'. The higher Risk Adjustment (Wsh 100,000 – 50,000) reduces the CSM further.")   
        }
        
            
            # Q18   
        if (tolower(trimws(input$q18)) %in% c("wsh 0", "0", "wsh 0 all years", "0 all years")) {
            score(score() + 1)
            section3_score(section3_score() + 1)
        feedback[[length(feedback) + 1]] <- "✅ Q18: Correct!"
        feedbackSuccess("q18", "Correct!")
        } else if (tolower(trimws(input$q18)) %in% c("wsh 0/0 all years", "0/0 all years")) {
            score(score() + 1)
            section3_score(section3_score() + 1)
        } else {
        feedback[[length(feedback) + 1]] <- "❌ Q18: Correct answer is 'Wsh 0'. Since interest rates are 0%, there is no Insurance Finance Expense under IFRS 17."
        feedbackDanger("q18", "Incorrect! Correct answer is 'Wsh 0'. Since interest rates are 0%, there is no Insurance Finance Expense under IFRS 17.") 
        }


            # Q19   
        if (tolower(trimws(input$q19)) %in% c("wsh 6b", "6b", "wsh 6b/14b", "6b/14b")) {
            score(score() + 1)
            section3_score(section3_score() + 1)
        feedback[[length(feedback) + 1]] <- "✅ Q19: Correct!"
        feedbackSuccess("q19", "Correct!")
        } else if (tolower(trimws(input$q19)) %in% c("wsh 6b/14b", "6b/14b")) {
            score(score() + 1)
            section3_score(section3_score() + 1)
        } else {
        feedback[[length(feedback) + 1]] <- "❌ Q19: Correct answer is 'Wsh 6B'. Selling at half the premium makes the fulfilment cash flows greater than consideration, leading to a loss component."
        feedbackDanger("q19", "Incorrect! Correct answer is 'Wsh 6B'. Selling at half the premium makes the fulfilment cash flows greater than consideration, leading to a loss component.")
        }


        output$result <- renderUI({
        total_questions <- 19
        percentage <- round((score() / total_questions) * 100, 1)
        name <- isolate(input$participant_name)

        color <- if (percentage >= 70) "#198754" else "#dc3545"

        tagList(
            div(style = "background-color:#ffffff; padding:25px; border-radius:10px; box-shadow:0 4px 12px rgba(0,0,0,0.08); font-family:Arial, sans-serif;",
            h3("📊 Results Summary", style = "color:#0d6efd; font-weight:600; margin-bottom:20px;"),
            
            HTML(paste0(
                "<p style='font-size:17px;'><strong>👤 Participant:</strong> ", name, "</p>",
                "<div style='display:flex; gap:40px; flex-wrap:wrap;'>",
                "<div><p><strong>Section I Score:</strong><br>", section1_score(), " / 4</p></div>",
                "<div><p><strong>Section II Score:</strong><br>", section2_score(), " / 9</p></div>",
                "<div><p><strong>Section III Score:</strong><br>", section3_score(), " / 10</p></div>",
                "</div>",
                "<hr style='border-top: 1px solid #dee2e6;'>",
                "<p style='font-size:18px;'><strong>Total Score:</strong> ", score(), " / ", total_questions, "</p>",
                "<p style='font-size:18px;'><strong>Percentage Score:</strong> <span style='color:", color, "; font-weight:600;'>", percentage, "%</span></p>"
            )),
            
            div(style = "margin-top:25px;",
                h4("📘 Detailed Feedback", style = "margin-bottom:15px; color:#343a40;"),
                tags$ul(
                lapply(feedback, function(msg) {
                    tags$li(style = "margin-bottom:8px;", HTML(msg))
                })
                )
            )
            )
        )
        })



    # Update progress bar at the end of all scoring
    updateProgressBar(session, id = session$ns("quiz_progress"), value = score())

    # Enable certificate only if score ≥ 70%
    if (score() >= 0.5 * 19) {
        cert_ready(TRUE)
    } else {
        cert_ready(FALSE)
    }

    output$allowCertificate <- reactive({
    cert_ready()
    })


    outputOptions(output, "allowCertificate", suspendWhenHidden = FALSE)


        
    })

    output$download_certificate <- downloadHandler(
        filename = function() {
            paste0("IFRS17_Certificate_", Sys.Date(), ".pdf")
        },
        content = function(file) {
            rmarkdown::render(
            input = "modules/certificate_template.Rmd",  
            output_file = file,
            params = list(
                name = final_name(),
                score = score(),
                total = 19
            ),
            envir = new.env(parent = globalenv())
            )
        }
    )

  })
}
