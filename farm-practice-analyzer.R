#R Language

# Step 1: Install required packages (only once)
install.packages("leaflet")
install.packages("dplyr")
install.packages("readr")

# Step 2: Load the packages
library(leaflet)
library(dplyr)
library(readr)

# Step 3: Set your working directory

# Change the path to the folder where your CSV file is saved
setwd("C:/Users/worm_/Downloads")
# Step 4: Read your CSV file
farm_data <- read.csv("farm_locations.csv")
# Check data
head(farm_data)


# Step 4: Read the CSV file
farm_data <- read_csv("farm_locations.csv")

# Step 5: Create interactive map
leaflet(farm_data) %>%
  addTiles() %>%
  addCircleMarkers(
    lng = ~Longitude,
    lat = ~Latitude,
    radius = ~Soil_pH * 2,
    color = ~ifelse(Practice == "Regenerative", "green", "red"),
    popup = ~paste0(
      "<b>Farm ID:</b> ", FarmID, "<br>",
      "<b>Farmer:</b> ", FarmerName, "<br>",
      "<b>Practice:</b> ", Practice, "<br>",
      "<b>Soil pH:</b> ", Soil_pH
    )
  ) %>%
  addLegend("bottomright", 
            colors = c("green", "red"),
            labels = c("Regenerative", "Conventional"),
            title = "Farming Practice")

# dowload packages
library(shiny)
library(leaflet)
library(readr)
library(dplyr)

# UI
ui <- fluidPage(
  titlePanel("Regenerative Agriculture Farm Map"),
  
  sidebarLayout(
    sidebarPanel(
      fileInput("file", ":open_file_folder: เลือกไฟล์ฟาร์ม (CSV):", 
                accept = c(".csv")),
      checkboxGroupInput("practice_filter", ":test_tube: เลือกประเภทฟาร์ม:",
                         choices = c("Regenerative", "Conventional"),
                         selected = c("Regenerative", "Conventional"))
    ),
    
    mainPanel(
      leafletOutput("farmMap", height = "600px")
    )
  )
)

# Server
server <- function(input, output, session) {
  
  # read data to CSV
  farmData <- reactive({
    req(input$file)
    read_csv(input$file$datapath)
  })
  
  # create map
  output$farmMap <- renderLeaflet({
    req(farmData())
    
    data <- farmData() %>% 
      filter(Practice %in% input$practice_filter)
    
    leaflet(data) %>%
      addTiles() %>%
      addCircleMarkers(
        lng = ~Longitude,
        lat = ~Latitude,
        radius = ~Soil_pH * 2,
        color = ~ifelse(Practice == "Regenerative", "green", "red"),
        popup = ~paste0(
          "<b>ฟาร์ม:</b> ", FarmID, "<br>",
          "<b>เกษตรกร:</b> ", FarmerName, "<br>",
          "<b>รูปแบบ:</b> ", Practice, "<br>",
          "<b>ค่า pH ดิน:</b> ", Soil_pH
        )
      ) %>%
      addLegend("bottomright",
                colors = c("green", "red"),
                labels = c("Regenerative", "Conventional"),
                title = "Farming Practice")
  })
}

# run app
shinyApp(ui, server)
