library(shiny)
library(shinyWidgets)
library(rmarkdown) 
library(bs4Dash)
library(ggplot2)
library(bslib)
library(plotly)
library(DT) 
library(dplyr)
library(lubridate)
library(shinyjs)
library(shinyBS)
library(scales)
library(shinyFeedback)
shinyjs::useShinyjs()

source("modules/introModule.R")
source("modules/measurementModule.R")
source("modules/caseStudiesModule.R")
source("modules/module1Module.R") 
source("modules/module2Module.R")
source("modules/module3Module.R")
source("modules/module4Module.R")
source("modules/module5Module.R")
source("modules/module6Module.R")
source("modules/module7Module.R")
source("modules/module8Module.R")
source("modules/module9Module.R")
source("modules/module10Module.R")
source("modules/module11Module.R")
source("modules/module12Module.R")
source("modules/module13Module.R")
source("modules/module14Module.R")
source("modules/module15Module.R")


# Define a custom theme using bslib
my_theme <- bs_theme(
  bg = "#202123", 
  fg = "#E1E1E1", 
  primary = "#EA80FC", 
  info = "#17a2b8",
  secondary = "#00BFA5",
  base_font = font_google("Nunito Sans"),
  heading_font = font_google("Nunito Sans"),
  code_font = font_google("Nunito Sans"),
  navbar_bg = "#333333",  
  navbar_fg = "#ffffff"  
)

# Define the UI
ui <- dashboardPage(
  title = "IFRS 17 Digital Training Module",
  freshTheme = my_theme,
  dark = NULL,
  help = NULL,
  fullscreen = FALSE,
  scrollToTop = TRUE,
  dashboardHeader(
    disable = TRUE,
    fixed = FALSE,
    sidebarIcon = NULL
  ),
  dashboardSidebar(
    div(class = "logos",
        img(src = "images/ira_logo_.png", class = "ira-logo") 
    ),
  tags$div(
    class = "menu-container", 
    sidebarMenu(
      id = "sidebar", 
      # top‐level items
      menuItem("Introduction",  tabName = "intro",  icon = icon("info-circle")),
      menuItem("Foundations and Standards",  tabName = "measurement",  icon = icon("balance-scale")),
      # grouped IFRS-17 Modules
      menuItem(
        "IFRS-17 Modules", icon = icon("th-list"),
        menuSubItem(" | Module 1",  tabName = "module1", icon = icon("book")),
        menuSubItem(" | Module 2",  tabName = "module2", icon = icon("book")),
        menuSubItem(" | Module 3",  tabName = "module3", icon = icon("book")),
        menuSubItem(" | Module 4",  tabName = "module4", icon = icon("book")),
        menuSubItem(" | Module 5",  tabName = "module5", icon = icon("book")),
        menuSubItem(" | Module 6",  tabName = "module6", icon = icon("book")),
        menuSubItem(" | Module 7",  tabName = "module7", icon = icon("book")),
        menuSubItem(" |  Module 8",  tabName = "module8", icon = icon("book")),
        menuSubItem(" | Module 9",  tabName = "module9", icon = icon("book")),
        menuSubItem(" | Module 10", tabName = "module10", icon = icon("book")),
        menuSubItem(" | Module 11", tabName = "module11", icon = icon("book")),
        menuSubItem(" | Module 12", tabName = "module12", icon = icon("book")),
        menuSubItem(" | Module 13", tabName = "module13", icon = icon("book")),
        menuSubItem(" | Module 14", tabName = "module14", icon = icon("book")),
        menuSubItem(" | Module 15", tabName = "module15", icon = icon("book"))
      )
      # final item
      # menuItem("Case Studies", tabName = "cases", icon = icon("book-open"))
    )
  )

    # div(class = "sidebar-footer",
    #     img(src = "images/kenbright.png")
    # )
  ), 
  dashboardBody(
    shinyFeedback::useShinyFeedback(),
    shinyjs::useShinyjs(),
    tags$head(
      includeCSS("www/css/intro.css"),
      includeCSS("www/css/media_queries.css"),
      includeCSS("www/css/custom_styles.css"),
      includeCSS("www/css/measurement.css"),
      includeCSS("www/css/module1.css"), 
      includeCSS("www/css/module2.css"),
      includeCSS("www/css/module3.css"),
      includeCSS("www/css/module4.css"),
      includeCSS("www/css/module5.css"),
      includeCSS("www/css/module6.css"),
      includeCSS("www/css/module7.css"),      
      includeCSS("www/css/module9.css"),  
      includeCSS("www/css/module11.css"),  
      includeCSS("www/css/module13.css"), 
      includeCSS("www/css/module14.css"),
      tags$script(src = "js/custom.js"),
      tags$link(rel = "shortcut icon", href = "favicon/kenbright.ico", type = "image/x-icon"),
      tags$link(
        href = "https://fonts.googleapis.com/css2?family=Nunito+Sans:wght@400;700&display=swap", 
        rel = "stylesheet")
    ),
    tabItems(
      tabItem(tabName = "intro", IFRS17TrainingIntroUI("intro")),
      tabItem(tabName = "measurement", IFRS17MeasurementUI("measurement")),
      # tabItem(tabName = "cases", IFRS17CaseStudiesUI("cases")),

      # Additional Modules 2–16
      tabItem(tabName = "module1",     IFRS17Module1UI("module1")),
      tabItem(tabName = "module2",     IFRS17Module2UI("module2")),
      tabItem(tabName = "module3",     IFRS17Module3UI("module3")),
      tabItem(tabName = "module4",     IFRS17Module4UI("module4")),
      tabItem(tabName = "module5",     IFRS17Module5UI("module5")),
      tabItem(tabName = "module6",     IFRS17Module6UI("module6")),
      tabItem(tabName = "module7",     IFRS17Module7UI("module7")),
      tabItem(tabName = "module8",     IFRS17Module8UI("module8")),
      tabItem(tabName = "module9",     IFRS17Module9UI("module9")),
      tabItem(tabName = "module10",    IFRS17Module10UI("module10")),
      tabItem(tabName = "module11",    IFRS17Module11UI("module11")),
      tabItem(tabName = "module12",    IFRS17Module12UI("module12")),
      tabItem(tabName = "module13",    IFRS17Module13UI("module13")),
      tabItem(tabName = "module14",    IFRS17Module14UI("module14")),
      tabItem(tabName = "module15",    IFRS17Module15UI("module15"))
    ),
    div(
      class = "app-footer",
      style = "text-align: center; padding: 10px; color: #bbb; font-size: 14px;",
      tags$span("Powered by "),
      tags$img(src = "images/kenbright.png", style = "height: 25px; vertical-align: middle; margin-left: 5px;")
    )
  )
)

# Define the server logic
server <- function(input, output, session) {

  # This now captures the Intro navigation event
  intro_nav <- IFRS17TrainingIntroServer("intro")
  
  # When the user clicks “Next: Measurement Models”, jump the sidebar
  observeEvent(intro_nav(), {
    updateTabItems(
      session,            # THIS session is the **root** session
      inputId   = "sidebar",
      selected  = "measurement"
    )
  })


  # This captures the Measurement navigation event
  measurement_nav <- IFRS17MeasurementServer("measurement")

  # When the user clicks “Next: Module 1 - Introduction to IFRS 17”, jump the sidebar 
  observeEvent(measurement_nav(), {
    updateTabItems(
      session,            # THIS session is the **root** session
      inputId   = "sidebar",
      selected  = "module1"
    )
  })

  # This captures the Quiz/Module 1 navigation event
 module1_nav <- IFRS17Module1Server("module1")
  
  # When the user clicks “Next: Case Studies”, jump the sidebar
  observeEvent(module1_nav(), {
    updateTabItems(
      session,            # THIS session is the **root** session
      inputId   = "sidebar",
      selected  = "module2"
    )
  })  

  # This captures the Module 2 navigation event
  module2_nav <- IFRS17Module2Server("module2")
  # When the user clicks “Next: Module 3 - Combination & Separation of Insurance Contracts”, jump the sidebar
  observeEvent(module2_nav(), {
    updateTabItems(
      session,            # THIS session is the **root** session
      inputId   = "sidebar",
      selected  = "module3"
    )
  })

  # This captures the module 3 navigation event
  module3_nav <- IFRS17Module3Server("module3")
  # When the user clicks “Next: Module 4 - Level of Aggregation”, jump the sidebar
  observeEvent(module3_nav(), {
    updateTabItems(
      session,            # THIS session is the **root** session
      inputId   = "sidebar",
      selected  = "module4"
    )
  })

  # This captures the module 4 navigation event
  module4_nav <- IFRS17Module4Server("module4")
  # When the user clicks “Next: Module 5 - Recognition”, jump the sidebar
  observeEvent(module4_nav(), {
    updateTabItems(
      session,            # THIS session is the **root** session
      inputId   = "sidebar",
      selected  = "module5"
    )
  })

  # This captures the module 5 navigation event
  module5_nav <- IFRS17Module5Server("module5")
  # When the user clicks “Next: Module 6 - Measurement on Initial Recognition”, jump the sidebar
  observeEvent(module5_nav(), {
    updateTabItems(
      session,            # THIS session is the **root** session
      inputId   = "sidebar",
      selected  = "module6"
    )
  })

  # This captures the module 6 navigation event
  module6_nav <- IFRS17Module6Server("module6")
  # When the user clicks “Next: Module 7 - Subsequent Measurement”, jump the sidebar
  observeEvent(module6_nav(), {
    updateTabItems(
      session,            # THIS session is the **root** session
      inputId   = "sidebar",
      selected  = "module7"
    )
  })

  # This captures the module 7 navigation event
  module7_nav <- IFRS17Module7Server("module7")
  # When the user clicks “Next: Module 8 - Discounting, CSM & Risk Adjustment”, jump the sidebar
  observeEvent(module7_nav(), {
    updateTabItems(
      session,            # THIS session is the **root** session
      inputId   = "sidebar",
      selected  = "module8"
    )
  })

  # This captures the module 8 navigation event
  module8_nav <- IFRS17Module8Server("module8") 
  # When the user clicks “Next: Module 9 - Onerous Contracts”, jump the sidebar
  observeEvent(module8_nav(), {
    updateTabItems(
      session,            # THIS session is the **root** session
      inputId   = "sidebar",
      selected  = "module9"
    )
  })

  # This captures the module 9 navigation event
  module9_nav <- IFRS17Module9Server("module9")
  # When the user clicks “Next: Module 10 - Premium Allocation Approach”, jump the sidebar
  observeEvent(module9_nav(), {
    updateTabItems(
      session,            # THIS session is the **root** session
      inputId   = "sidebar",
      selected  = "module10"
    )
  })

  # This captures the module 10 navigation event
  module10_nav <- IFRS17Module10Server("module10")
  # When the user clicks “Next: Module 11 - Reinsurance Contracts Held”, jump the sidebar
  observeEvent(module10_nav(), {
    updateTabItems(
      session,            # THIS session is the **root** session
      inputId   = "sidebar",
      selected  = "module11"
    )
  })

  # This captures the module 11 navigation event
  module11_nav <- IFRS17Module11Server("module11")
  # When the user clicks “Next: Module 12 - Investment Contracts with Discretionary Participation Features”, jump the sidebar
  observeEvent(module11_nav(), {
    updateTabItems(
      session,            # THIS session is the **root** session
      inputId   = "sidebar",
      selected  = "module12"
    )
  })

  # This captures the module 12 navigation event
  module12_nav <- IFRS17Module12Server("module12")
  # When the user clicks “Next: Module 13 - Modification & Derecognition”, jump the sidebar
  observeEvent(module12_nav(), {
    updateTabItems(
      session,            # THIS session is the **root** session
      inputId   = "sidebar",
      selected  = "module13"
    )
  })

 # This captures the module 13 navigation event  
  module13_nav <- IFRS17Module13Server("module13")
  # When the user clicks “Next: Module 14 - Presentation of Financial Statements”, jump the sidebar
  observeEvent(module13_nav(), {
    updateTabItems(
      session,            # THIS session is the **root** session
      inputId   = "sidebar",
      selected  = "module14"
    )
  })

  # This captures the module 14 navigation event
  module14_nav <- IFRS17Module14Server("module14")
  
  # When the user clicks “Next: Module 15 - Insurance Service Result”, jump the sidebar
  observeEvent(module14_nav(), {
    updateTabItems(
      session,            # THIS session is the **root** session
      inputId   = "sidebar",
      selected  = "module15"
    )
  })

  # # This captures the module 15 navigation event
  # module15_nav <- IFRS17Module15Server("module15")
  # # When the user clicks “Next: Module 16 - Insurance Finance Income or Expenses”, jump the sidebar
  # observeEvent(module15_nav(), {
  #   updateTabItems(
  #     session,            # THIS session is the **root** session
  #     inputId   = "sidebar",
  #     selected  = "cases"
  #   )
  # })

  # This captures the module 16 navigation event
  IFRS17Module15Server("module15")

  # This captures the Case Studies navigation event 
  # IFRS17CaseStudiesServer("cases")
}

# Run the Shiny app
shinyApp(ui, server)  






