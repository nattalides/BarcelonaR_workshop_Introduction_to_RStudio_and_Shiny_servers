## Commands for VM Machine

sudo apt-get update

sudo apt-get upgrade

sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys E298A3A825C0D65DFD57CBB651716619E084DAB9

sudo echo "deb https://cloud.r-project.org/bin/linux/ubuntu xenial-cran35/" | sudo tee -a /etc/apt/sources.list

sudo apt-get update

sudo apt-get install r-base r-base-dev

sudo apt-get install libcurl4-openssl-dev libssl-dev libxml2-dev

sudo R

## Commands whilst in R session

install.packages(c('shiny', 'rmarkdown'), Ncpus = 2)

q("no")

## Commands for VM Machine

sudo gpg --keyserver keys.gnupg.net --recv-keys 3F32EE77E331692F

sudo apt-get install gdebi-core

wget https://download2.rstudio.org/server/xenial/amd64/rstudio-server-1.3.1093-amd64.deb

sudo gdebi rstudio-server-1.3.1093-amd64.deb

sudo adduser <username>

sudo apt-get install gdebi-core

wget https://download3.rstudio.org/ubuntu-14.04/x86_64/shiny-server-1.5.14.948-amd64.deb

sudo gdebi shiny-server-1.5.14.948-amd64.deb

sudo systemctl status shiny-server

## Login to RStudio server

1. Create a folder, for example "my-app"
2. Create an R script and save in "my-app" folder with name "ui.R"

```
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
```

3. Create an R script and save in "my-app" folder with name "server.R"

```
library(shiny)
# Define server logic and R code
server <- function(input, output) {
 
  output$text_output <- renderText({
	# Display text input
	paste("You typed:", input$text_input)
  })
}
```

## Commands for VM Machine

sudo ln -s /home/\<username\>/my-app /srv/shiny-server/my-app

