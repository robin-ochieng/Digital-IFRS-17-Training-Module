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
if (!tinytex::is_tinytex()) tinytex::install_tinytex()
library(tinytex)

source("modules/caseStudiesModule.R")
source("modules/introModule.R")
source("modules/measurementModule.R")
source("modules/quizModule.R")

# Define a custom theme using bslib
my_theme <- bs_theme(
  bg = "#202123", 
  fg = "#E1E1E1", 
  primary = "#EA80FC", 
  info = "#17a2b8",
  secondary = "#00BFA5",
  base_font = font_google("Nunito"),
  heading_font = font_google("Nunito"),
  code_font = font_google("Nunito"),
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
        menuItem("Introduction", tabName = "intro", icon = icon("info-circle")),
        menuItem("Measurement Models", tabName = "measurement", icon = icon("balance-scale")),
        menuItem("Quizzes", tabName = "quiz", icon = icon("clipboard-check")),
        menuItem("Case Studies", tabName = "cases", icon = icon("book-open"))
      )
    ),
    div(class = "sidebar-footer",
        img(src = "images/kenbright.png")
    )
  ), 
  dashboardBody(
    shinyFeedback::useShinyFeedback(),
    tags$head(
      includeCSS("www/css/custom_styles.css"),
      tags$script(src = "js/custom.js"),
      tags$link(rel = "shortcut icon", href = "favicon/kenbright.ico", type = "image/x-icon"),
      tags$link(
        href = "https://fonts.googleapis.com/css2?family=Nunito:wght@400;700&display=swap", 
        rel = "stylesheet")
    ),
    tabItems(
      tabItem(tabName = "intro",
              IFRS17TrainingIntroUI("intro")
      ),
      tabItem(tabName = "measurement",
              IFRS17MeasurementUI("measurement")
      ),
      tabItem(tabName = "quiz",
              IFRS17QuizUI("quiz")
      ),
      tabItem(tabName = "cases",
              IFRS17CaseStudiesUI("cases")
      )
    )
  )
)

# Define the server logic
server <- function(input, output, session) {

  
  IFRS17TrainingIntroServer("intro")
  IFRS17MeasurementServer("measurement")
  IFRS17QuizServer("quiz")
  IFRS17CaseStudiesServer("cases")
}

# Run the Shiny app
shinyApp(ui, server)  