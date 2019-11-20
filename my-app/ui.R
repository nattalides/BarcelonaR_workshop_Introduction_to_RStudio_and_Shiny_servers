# Define UI for application
ui <- fluidPage(
  
  # Application title
  titlePanel("Hello BarcelonaR!"),
  
  # Sidebar with an input
  sidebarLayout(
    sidebarPanel(
      textInput("text_input", "Input text here:")
    ),
    
    # Main with output
    mainPanel(
      textOutput("text_output")
    )
  )
)