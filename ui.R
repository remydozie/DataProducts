library(shiny)

# Rely on the 'WorldPhones' dataset in the datasets
# package (which generally comes preloaded).
library(datasets)

# Define the overall UI
shinyUI(
  
  # Use a fluid Bootstrap layout
  fluidPage(    
    
    # Give the page a title
    titlePanel("Telephones  by World Regions"),
    
    # Generate a row with a sidebar
    sidebarLayout(      
      
      # Define the sidebar with one input
      sidebarPanel(
        selectInput("region", "Region:", 
                    choices=colnames(WorldPhones)),
        hr(),
        helpText("Data from R Studio Library:The World's Telephones Prepared by AT&T (1961).")
      ),
      
      # Create a spot for the barplot
      mainPanel(
        plotOutput("phonePlot")  
      )
      
    )
  )
)