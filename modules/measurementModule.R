IFRS17MeasurementUI <- function(id) {
  ns <- NS(id)

  logo_bar <- fluidRow(
    class = "logo-bar",
    column(
      width = 12,
      tags$div(
        class = "logo-wrapper d-flex justify-content-between align-items-center",
        tags$img(src = "images/ira_logo_.png", class = "logo logo-afdb"),
        # tags$img(src = "images/kenbright.png", class = "logo logo-kenbright")
        
      )
    )
  )

  tagList(
    # logo_bar,
    div(class = "model-outer-wrapper",
        div(class = "ifrs17-model-container",
            h2("📊 Measurement Models in IFRS 17", class = "section-title"),

            p(class = "model-intro",
              "IFRS 17 prescribes different measurement models depending on the nature of the insurance contract. Select a model below to explore its key characteristics and visual behavior."
            ),

            div(class = "radio-wrapper",
                radioButtons(ns("model_select"), label = "Choose a model:",
                  choices = c(
                    "Building Block Approach (BBA)",
                    "Premium Allocation Approach (PAA)",
                    "Variable Fee Approach (VFA)"
                  ),
                  selected = "Building Block Approach (BBA)"
                ),

            div(class = "model-description",
                textOutput(ns("model_explanation"))
            ),

            div(plotOutput(ns("model_plot")), class = "plot-wrapper")
            )
        )
    ),
          div(
            class = "intro-nav",
            actionButton(
              ns("to_module_1"),
              label = tagList(icon("arrow-right"), "Next: Module 1 - Introduction to IFRS 17"),
              class = "control-button-tavnav"
            )
          )
  )
}

IFRS17MeasurementServer <- function(id) {
  moduleServer(id, function(input, output, session) {

    output$model_plot <- renderPlot({
      req(input$model_select)

      model <- input$model_select

      # Simulated logic for each model
      plot_data <- switch(model,
        "Building Block Approach (BBA)" = data.frame(x = 1:10, y = c(100, 95, 90, 86, 83, 80, 78, 76, 75, 74)),
        "Premium Allocation Approach (PAA)" = data.frame(x = 1:10, y = c(100, 98, 95, 92, 88, 84, 80, 76, 72, 68)),
        "Variable Fee Approach (VFA)" = data.frame(x = 1:10, y = c(100, 97, 103, 98, 105, 102, 99, 95, 92, 90))
      )

      color <- switch(model,
        "Building Block Approach (BBA)" = "#007bff",
        "Premium Allocation Approach (PAA)" = "#28a745",
        "Variable Fee Approach (VFA)" = "#6f42c1"
      )

      ggplot(plot_data, aes(x, y)) +
        geom_line(color = color, linewidth = 1.8) +
        geom_point(color = color, size = 3) +
        labs(
          title = paste("Illustrative Liability Trend:", model),
          x = "Time (Period)",
          y = "Liability Value"
        ) +
        theme_minimal(base_size = 14) +
        theme(
          plot.title = element_text(face = "bold", hjust = 0.5, color = "#333"),
          axis.title = element_text(color = "#555")
        )
    })

  output$model_explanation <- renderText({
    req(input$model_select)

    switch(input$model_select,
      "Building Block Approach (BBA)" = 
        "The BBA is a general model used for long-term contracts. It accounts for expected future cash flows, risk adjustment, and contractual service margin.",
      
      "Premium Allocation Approach (PAA)" = 
        "The PAA is a simplified model typically used for short-duration contracts. It approximates the BBA and resembles unearned premium approaches.",

      "Variable Fee Approach (VFA)" = 
        "The VFA is designed for contracts with direct participation features. It reflects an insurer’s share in underlying asset returns and adjusts profit recognition accordingly."
    )
  })

    # create a reactive for the “Next” click
    to_module_1 <- reactive(input$to_module_1)

    # return it so the app can observe it
    to_module_1

  })
}
