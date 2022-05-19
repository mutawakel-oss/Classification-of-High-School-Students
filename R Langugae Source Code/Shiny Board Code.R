#Following commands used to load the required packages
library(shiny)
library(shinydashboard)
library(tidymodels)
library(tidyverse)

#Following code used to fetch the lookup of dashboard input checkboxes via separated datasets

nationality_dataset<-read.csv("nationality_dataset.csv",header = TRUE)
school_dataset<-read.csv("school_dataset.csv",header = TRUE)
section_dataset<-read.csv("section_dataset.csv",header = TRUE)
type_dataset<-read.csv("study_type_dataset.csv",header = TRUE)
town_dataset<-read.csv("town_dataset.csv",header = TRUE)

#Following commanda is used to load the built classification model as a result of the classification task
model_High_School <- readRDS("Part2_Model_knn2.rds")

#Following code is used to create the User Interface including the interface input components such as checkboxes and slidebars
ui <- dashboardPage(
  dashboardHeader(title = "Classification Prediction Model of High-school Students` Final Mark"),
  
  dashboardSidebar(
    menuItem(
      "High School Prediction Model",
      tabName = "final_mark_dummy",
      icon = icon("newspaper")
    )
  ),
  dashboardBody(
    tabItem(
      tabName = "final_mark_tab",
      box(valueBoxOutput("final_mark_dummy")),
      box(checkboxGroupInput("study_type.f",label = "Study Type",choiceNames=type_dataset$study_type, choiceValues =type_dataset$study_type.f,selected=5)),
      box(checkboxGroupInput("section_name.f",label = "Section Name",choiceNames=section_dataset$section_name, choiceValues =section_dataset$section_name.f,selected=8)),
      box(checkboxGroupInput("town_name.f",label = "Town Name",choiceNames=town_dataset$town_name, choiceValues =town_dataset$town_name.f,selected=43)),
      box(checkboxGroupInput("school_name.f",label = "School Name",choiceNames=school_dataset$school_name, choiceValues =school_dataset$school_name.f,selected=72)),
      box(checkboxGroupInput("nationality.f",label = "Nationality",choiceNames=nationality_dataset$student_nationality, choiceValues =nationality_dataset$nationality.f,selected=58)),
      box(sliderInput("second_year_mark", label = "Second Year Mark",
                      min = 0.0, max = 100.0, value = 97))
    )
  )
)

#Following code is used to create the server part of the dashboard which is used to get the input of the user interface and process it via the 
# loaded classificaiton model (Part2_Model_knn2.rds) used KNN method for classification.
server <- function(input, output) { 
  
  output$final_mark_dummy <- renderValueBox({
    
    predi <- predict(
      model_High_School,
      tibble("study_type.f" = as.integer(input$study_type.f),
             "section_name.f" = as.integer(input$section_name.f),
             "town_name.f" = as.integer(input$town_name.f),
             "school_name.f" =as.integer(input$school_name.f),
             "nationality.f" = as.integer(input$nationality.f),
             "second_year_mark" = input$second_year_mark)
    )
    
    predi_prob <- predict(
      model_High_School,
      tibble("study_type.f" = as.integer(input$study_type.f),
             "section_name.f" = as.integer(input$section_name.f),
             "town_name.f" = as.integer(input$town_name.f),
             "school_name.f" = as.integer(input$school_name.f),
             "nationality.f" = as.integer(input$nationality.f),
             "second_year_mark" = input$second_year_mark),
      type = "prob"
    ) %>% 
      gather() %>% 
      arrange(desc(value)) %>% 
      slice(1) %>% 
      select(value)
    
    
    valueBox(
      value = paste0(100*round(predi_prob$value,4), "%"),
      subtitle = paste0("Predicted Class: ", predi$.pred_class),
      icon = icon("newspaper")
    )
    
  })
  
}

shinyApp(ui, server)
