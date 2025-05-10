IFRS17CaseStudiesUI <- function(id) {
  ns <- NS(id)

  logo_bar <- fluidRow(
    class = "logo-bar",
    column(
      width = 12,
      tags$div(
        class = "logo-wrapper d-flex justify-content-between align-items-center",
        tags$img(src = "images/kenbright.png", class = "logo logo-kenbright"),
        tags$img(src = "images/ira_logo_.png", class = "logo logo-afdb")
      )
    )
  )

  tagList(
    logo_bar,
    div(class = "case-outer-wrapper",
        div(class = "ifrs17-case-container",
            h3(class = "section-title", "📂 Case Study: Grouping Contracts"),
            p(class = "case-description",
              "This case study demonstrates how insurance contracts are grouped under IFRS 17 based on expected profitability. Contracts issued within a similar timeframe are grouped for consistent measurement and reporting."
            ),
            DTOutput(ns("case_table")),

            div(class = "intro-note",
                "Grouping is critical in IFRS 17 as it influences how contracts are measured and reported. Profitability segmentation ensures that losses are recognized early and profits are allocated over time."
            )
        )
    )
  )
}

IFRS17CaseStudiesServer <- function(id) {
  moduleServer(id, function(input, output, session) {
    # Sample case data
    case_data <- data.frame(
      ContractID = paste0("C", 1:5),
      IssueDate = Sys.Date() - 1:5,
      ExpectedProfit = c(TRUE, TRUE, FALSE, TRUE, FALSE),
      Notes = c(
        "This contract is expected to generate a profit and is grouped accordingly.",
        "Consistent profit expectations allow grouping within the profitable cohort.",
        "This contract is loss-making and must be grouped separately for immediate loss recognition.",
        "Profitable grouping applies, subject to timing alignment.",
        "This contract triggers onerous contract treatment under IFRS 17."
      )
    )

    # Render the table with expandable rows using JS
    output$case_table <- renderDT({
      datatable(
        case_data[, 1:3],  # show only main columns
        options = list(
          dom = 't',
          paging = FALSE,
          ordering = FALSE,
          columnDefs = list(
            list(className = 'dt-center', targets = "_all")
          ),
          rowCallback = JS(
            "function(row, data, index) {
               $(row).css('cursor', 'pointer');
               $(row).off('click').on('click', function() {
                 var table = $('#', this).closest('table').DataTable();
                 var tr = $(this).closest('tr');
                 var row = table.row(tr);
                 if (row.child.isShown()) {
                   row.child.hide();
                   tr.removeClass('shown');
                 } else {
                   row.child('<div style=\"padding:10px;\">' + 
                             '<b>Notes:</b> ' + data[3] + '</div>').show();
                   tr.addClass('shown');
                 }
               });
             }"
          )
        ),
        callback = JS("table.on('click', 'tr', function() { table.rows().deselect(); });"),
        escape = FALSE,
        selection = "none",
        rownames = FALSE
      )
    })
  })
}

