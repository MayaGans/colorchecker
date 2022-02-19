library(shiny)

ui <- fluidPage(
  contrast_checker()
)

server <- function(input, output, session) {
  
}

shinyApp(ui, server)