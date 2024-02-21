# Dashboard UI
ui <- dashboardPage(
  
  dashboardHeader(
    title = "Arrests under crime against women",
    titleWidth = 650
  ),
  dashboardSidebar(
    sidebarMenu(
      id = "sidebar",
      menuItem("Dataset", tabName = "data", icon = icon("database")),
      menuItem(text = "Visualization", tabName = "viz", icon = icon("chart-line")),
      selectInput(inputId = "var1", label = "Select the Crime", choices = choices1, selected = "2019 - CR")
    )
  ),
  
  dashboardBody(
    tabItems(
      #First tab item
      tabItem(tabName = "data",
              #tab box
              tabBox(id = "t1", width = 12,
                     tabPanel("About",
                              fluidRow(
                                column(width = 8,
                                       tags$br() , 
                                       tags$a("This comprehensive dashboard provides a detailed overview of the arrests under crimes against women ")),
                                column(width = 4, tags$br() ,
                                      # tags$p("Abbrevations used are (CR) Child Rape, (CCS) Child Sexual Assault, (CON) Child Online Grooming, (PAR) Possession and Distribution of Child Abuse Material, (PCS) Child Sexual Exploitation, and (PCV) Child Victimization")
                                )
                              )  
                              
                     ),
                     tabPanel("Data",dataTableOutput("dataT")),
                     tabPanel("Structure",verbatimTextOutput("structure")),
                     tabPanel("Summary",verbatimTextOutput("summary")))),
      tabItem(tabName = "viz",
              #tab box
              tabBox(id = "t1", width = 12,
                     tabPanel("Crime Trends by States",value = "trends", plotlyOutput("bar")),
                     tabPanel("Distribution", value = "distro",plotlyOutput("histplot"))))
    )))
