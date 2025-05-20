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
          src   = "images/ira_logo_.png",
          class = "logo logo-afdb"
        ),
        # right-hand logo
        # tags$img(
        #   src   = "images/kenbright.png",
        #   class = "logo logo-kenbright"
        # )
      )
    )
  )
  tagList(
    # logo_bar,

    tags$div(
        class = "section-header",
        h2("📘 Module 1 – Introduction to IFRS 17", class = "section-title-top"),
        h3("📙 Section 1 – Basics", class = "section-title"),
        p("Answer the following questions to test your understanding of IFRS 17 fundamentals.",
          class = "section-subtitle")
    ),

    # shinyWidgets::progressBar(
    #     id = ns("quiz_progress"),
    #     value = 0,
    #     total = 19,
    #     display_pct = TRUE,
    #     striped = TRUE,
    #     status = "success"
    #     ),

    box(
        title = "Participant Information",
        status = "white", solidHeader = TRUE, width = 12,
        p("Please enter your name."),
        textInput(ns("participant_name"), "Enter your Name:")
    ),


    box(
      title = "1. What is the global date of Initial Application of IFRS 17 for insurance companies under
                National Insurance Commission's supervision?",
      status = "white", solidHeader = TRUE, width = 12,
      radioButtons(ns("q1"), label = NULL, choices = c(
        "31 Dec 2023", "1 Jan 2022", "1 Jan 2023", "31 Dec 2021"), selected = character(0))
    ),
    
    box(
      title = "2. When the National Insurance Commission (NIC) is supervising insurers, which of the
                methods below does it NOT expect to see as an IFRS 17 application method?",
      status = "white", solidHeader = TRUE, width = 12,
      radioButtons(ns("q2"), label = NULL, choices = c("Premium Allocation Approach", "General Allocation Approach", "General Measurement Model", "Variable Fee Approach"), selected = character(0))
    ),
    
    box(
      title = "3. Which Balance Sheet entry item below is NOT expected to be shown by an insurer while
                implementing IFRS 17?",
      status = "white", solidHeader = TRUE, width = 12,
      radioButtons(ns("q3"), label = NULL, choices = c("Insurance Contract Liabilities", "Premium Receivables from Policyholders", "Reinsurance Contract Assets", "Insurance Contract Assets"), selected = character(0))
    ),
    
    box(
      title = "4. Which Profit & Loss entry item below is NOT expected to be shown by an insurer while
                implementing IFRS 17?",
      status = "white", solidHeader = TRUE, width = 12,
      radioButtons(ns("q4"), label = NULL, choices = c("Gross Written Premium", "Management Expenses", "Commissions (Insurance Acquisition Costs)", "Incurred Claims"), selected = character(0))
    ),
    
    tags$div(
        class = "section-header",
        h3("📙 Section 2: Concepts", class = "section-title"),
        p("Explore key terminologies, accounting treatments, and financial implications under IFRS 17.")
    ),
    box(
    title = "5. IFRS 17 requires that the insurer establishes a new reserve called Contractual Service
            Margin (“CSM”). What does this reserve represent? (2 marks)",
    status = "white", solidHeader = TRUE, width = 12,
    radioButtons(ns("q5"), label = NULL,
                choices = c("Unpaid Claims", "Unearned Profit", "Earned Premium", "Risk Adjustment"), selected = character(0))
    ),   

    box(
    title = "6. The Risk Adjustment for non-financial risks can be considered as (2 marks)",
    status = "white", solidHeader = TRUE, width = 12,
    radioButtons(ns("q6"), label = NULL,
                choices = c("Part of Gross Written Premium", "Part of Shareholder Funds", "Part of Premium & Claims Reserves", "Part of Intangible Assets"), selected = character(0))
    ),

    box(
    title = "7. The Liability for Incurred Claims (LIC) is composed of: (2 marks)",
    status = "white", solidHeader = TRUE, width = 12,
    radioButtons(ns("q7"), label = NULL,
                choices = c(
                    "Liability for Remaining Coverage & Risk Adjustment Margin",
                    "Outstanding Claim Reserves and Incurred But Not Reported Reserves & Risk Adjustment for Non-Financial Risks",
                    "Contractual Service Margin & Risk Adjustment Margin for Non-Financial Risks",
                    "Premium & Risk Adjustment Margin for Non-Financial Risks"), selected = character(0))
    ),

    box(
    title = "8. How does IFRS 17 Standard expect the insurer and the National Insurance Commission
            to monitor how the discounting of cashflows is being unwound as the payment date gets
            closer? (2 marks)",
    status = "white", solidHeader = TRUE, width = 12,
    radioButtons(ns("q8"), label = NULL,
                choices = c(
                    "Through Contractual Service Margin",
                    "Through Insurance Finance Expense",
                    "Through Risk Adjustment Margin for Non-Financial Risks",
                    "Through Shareholder Funds"), selected = character(0))
    ),

    box(
    title = "9. If all the policyholders fully pay their premium on time, the “Insurance Revenue” of a
            General Insurance Company can be compared to (2 marks)",
    status = "white", solidHeader = TRUE, width = 12,
    radioButtons(ns("q9"), label = NULL,
                choices = c(
                    "Gross Written Premium", "Gross Earned Premium", "Net Earned Premium", "New Written Premium"), selected = character(0))
    ),

    box(
    title = "10. IFRS17 has a new view on how reinsurance contracts should be treated. The spirit of
            the new approach is (2 marks)",
    status = "white", solidHeader = TRUE, width = 12,
    radioButtons(ns("q10"), label = NULL,
                choices = c(
                    "Combine all reinsurance and policyholder cashflows to get a net position",
                    "Separate all reinsurance cashflows from policyholder cashflows and report the net cost of reinsurance separately",
                    "Combine only premium reinsurance cashflows and policyholder cashflows",
                    "Combine all claims, acquisition costs and gross premium cashflows"), selected = character(0))
    ),

    box(
    title = "11. IFRS 17 has a made some changes to how claim reserves should be treated when it
        comes to time value of money. The spirit of the new approach is (2 marks)",
    status = "white", solidHeader = TRUE, width = 12,
    radioButtons(ns("q11"), label = NULL,
                choices = c(
                    "The insurer has the choice of discounting or not regardless of when the claim is expected to be paid",
                    "All claims expected to be paid after a year should be discounted and those expected to be paid in less than
                        one year should also be discounted.",
                    "All claims expected to be paid after a year should be discounted and those expected to be paid in less than one year (can be discounted or not depending on the choice of the insurer)",
                    "All claims must be discounted regardless of expected payment date."), selected = character(0))
    ),

    box(
    title = "12. Some people say adoption of IFRS 17 should be encouraged by regulators, such as
        National Insurance Commission (NIC), because it encourages CASH and CARRY by (2 marks)",
    status = "white", solidHeader = TRUE, width = 12,
    radioButtons(ns("q12"), label = NULL,
                choices = c(
                    "Not capitalizing Premium Receivables in Balance Sheet",
                    "Ignoring Uncollected Premium in Income",
                    "It considers contracts only if claims have been paid",
                    "It discounts claims"), selected = character(0))
    ),

    box(
    title = "13. When an insurer discounts its liabilities at a higher rate than what it expecting to earn,
        the National Insurance Commission (NIC) can easily detect this in the Profit & Loss Account
        by looking at (2 marks)",
    status = "white", solidHeader = TRUE, width = 12,
    radioButtons(ns("q13"), label = NULL,
                choices = c(
                    "Insurance Revenue", "Insurance Service Expense",
                    "Net Financial Results", "Insurance Service Results"), selected = character(0))
    ),

    box(
    title = "14. Under the General Measurement Model (GMM), the insurance contract liabilities or
        assets are composed of (2 marks)",
    status = "white", solidHeader = TRUE, width = 12,
    radioButtons(ns("q14"), label = NULL,
                choices = c(
                    "Liability for Remaining Coverage & Risk Adjustment Margin",
                    "Liability for Remaining Coverage & Liability for Incurred Claims",
                    "Contractual Service Margin & Liability for Incurred Claims",
                    "Premium, Outstanding Claim Reserves and Incurred But Not Reported Reserves"), selected = character(0))
    ),

    actionButton(ns("submit"), "Submit Quiz", icon = icon("check"), class = "btn-primary control-button-submit" ),
    br(), 
    br(),
    uiOutput(ns("result")),
    div(
      class = "quiz-nav",
      actionButton(
          ns("to_case_studies"),
          label = tagList(icon("arrow-right"), "Next: Case Studies"),
          class = "control-button-tavnav"
      )
    )   
  )
}

# ---- Server ----
IFRS17QuizServer <- function(id) {
  moduleServer(id, function(input, output, session) {
    # bring ns into scope
    ns <- session$ns
    final_name <- reactiveVal("")

    score <- reactiveVal(0)
    section1_score <- reactiveVal(0)
    section2_score <- reactiveVal(0)
    
    # Feedback functions
    observeEvent(input$submit, {
        removeModal()
        # 1. List out all your question input IDs
        question_ids <- paste0("q", 1:14)
        
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
        section1_score(0)
        section2_score(0)
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
        


    output$result <- renderUI({
      total_questions <- 14
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
            h4("has successfully completed the IFRS 17 Fundamentals Quiz",
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
              "<div style='display:flex; gap:40px; flex-wrap:wrap;'>",
                "<div><p><strong>Section I Score:</strong><br>", section1_score(), " / 4</p></div>",
                "<div><p><strong>Section II Score:</strong><br>", section2_score(), " / 10</p></div>",
              "</div>",
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

          )  # closes print-summary

        )  # closes print-area

      )  # closes tagList

    })  # closes renderUI


    # Update progress bar at the end of all scoring
    # updateProgressBar(session, id = session$ns("quiz_progress"), value = score())     
    })



    # observeEvent(input$print_certificate, {
    #   runjs('
    #     var cert = document.querySelector(".print-area");
    #     if (!cert) {
    #       alert("Nothing to print – make sure you have submitted the quiz first.");
    #     } else {
    #       var w = window.open("", "_blank", "width=800,height=600");
    #       var html = [
    #         "<!doctype html>",
    #         "<html><head><title>Participation Certificate</title>",
    #         "<style>body { margin:20px; font-family:Arial,sans-serif; }</style>",
    #         "</head><body>", cert.outerHTML, "</body></html>"
    #       ].join("");
    #       w.document.write(html);
    #       w.document.close();
    #       w.onload = function() {
    #         w.focus();
    #         w.print();
    #         // if you want the window to auto close after printing, uncomment:
    #         // setTimeout(function(){ w.close(); }, 500);
    #       };
    #     }
    #   ')
    # })

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
    to_case_studies <- reactive(input$to_case_studies)

    # return it so the app can observe it
    to_case_studies

  })
}
