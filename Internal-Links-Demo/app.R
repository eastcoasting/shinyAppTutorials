#'//////////////////////////////////////////////////////////////////////////////
#' FILE: app.R
#' AUTHOR: David Ruvolo
#' CREATED: 2018-05-04
#' MODIFIED: 2019-11-01
#' PURPOSE: demo app for link to specific tabs on other pages in shiny apps
#' STATUS: working
#' PACKAGES: shiny
#' COMMENTS: uses index.js file located in www/js/
#'//////////////////////////////////////////////////////////////////////////////
options(stringsAsFactors = FALSE)

# pkgs
suppressPackageStartupMessages(library(shiny))

#'////////////////////////////////////////
# UI
ui <- tagList(
    
    # define <head>
    tags$head(
        
        # load js
        tags$script(type="text/javascript", src = "js/index.js"),
        
        # css
        tags$style(type="text/css",
                   "html,body{cursor:default;margin-bottom:75px; font-size: 14pt;}",
                   "a{cursor:pointer;}",
                   ".text-box{width:70%;margin:auto;}",
                   "pre{
                        padding: 12px;
                    	line-height: 1.7 !important;
                    	font-size: 12pt;
                    	cursor: text;
                    	tab-size: 1;  
                    	overflow-x: scroll;
                        white-space: pre-line;
                    }"
        )
    ),
    
    # define <body> and content
    navbarPage("Internal Links",
               
               #'////////////////////////////////////////
               # first page
               tabPanel("Home", value="home",
                        
                        tags$section(class="text-box",
                                     tags$h2("Manually linking your shiny pages"),
                                     tags$p("In html, hyperlinks are created by using the", tags$code("<a>"), "element. Moving from page to page or from one page to a specific element on another page can be acheived by setting an unique id for the target page or element, and then referencing that id in the", tags$code("<a>"), "element. However, this is not the case in shiny as hrefs are regenerated each time an app is launched. Therefore, a workaround is required to target other values. This app demonstrates how a small block of javascript can create a system of internal links. Click the following link to begin."),
                                     tags$a("Get started",onclick="customHref('page-nav-simple')")
                        )
               ), # end first page
               
               #'////////////////////////////////////////
               # second page
               tabPanel("Simple Navigation",value = "page-nav-simple",
                        
                        tags$section(class="text-box",
                                    
                                    # first page tab panel 
                                    tabsetPanel(
                                         
                                        #'////////////////////////////////////////
                                        # summary tab
                                        tabPanel("Congrats",value="tab-congrats",
                                                  
                                            # content
                                            tags$h3("Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.

Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.

Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.

Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.

Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.

Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.

Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.

!"),
                                            tags$p("You've made it. The first link used a custom function called",tags$code("customHref"),"this function takes a pre-defined id and loops through all available",tags$code("<a>"), "elements, and then simulates a mouse click to physically advance the screen. This function works for tabsetPanels too. Try click the following link."),
                                                  
                                            # navigation
                                            tags$a("Go to next tab", onclick="customHref('tab-other')")
                                        ), # end panel
                                         
                                        #'////////////////////////////////////////
                                        # about tab
                                        tabPanel("Other tab", value = "tab-other",
                                                  
                                            tags$h3("Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.

Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.

Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.

Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.

Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.

Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.

Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.

!"),
                                            
                                            # content
                                            tags$p("Cool. We can move to other tabs on the same page. But what about moving to a specific tab on a different page? Click the following link to go to the second tab on the next page."),
                                                  
                                            # navigation
                                            tags$a("Go to the the second tab on the next page", onclick = "customHref('page-nav-specific');customHref('tab-specific');")
                                        ) # end panel 
                                    ) # end tabset 
                        ) # end section
               ),  # end tab
               
               #'////////////////////////////////////////
               # second page
               tabPanel("Specifc Navigation", value="page-nav-specific",
                        
                        tags$section(class="text-box",
                                     
                                     # first page tab panel 
                                     tabsetPanel(
                                         
                                         # methodology tab
                                         tabPanel("The Basics", value="tab-basics",
                                                  
                                                  tags$h3("Here's what you need to get started"),
                                                  
                                                  
                                                  # content 
                                                  tags$p("Now that I've demonstrated how to navigate to other pages, let's reveal the underlying code."),
                                                  
                                                  tags$h4("UI Setup"),
                                                  tags$p("To get started, all tabPanels will need to have a unique value assigned to the argument", tags$code("value"), "this is the parameter that the js code looks for. For example you might set up a home page like this:"),
                                                  tags$code("tabPanel('Home Page',value='page-home')"),
                                                  tags$h4("The function"),
                                                  tags$p("The function",tags$code("customHref"), "loops through all available  links and reads the values in attribute",tags$code("data-value")),
                                                  tags$pre(tags$code(
    'const customHref = function(link){
    const links = document.getElementsByTagName("a");
    Object.entries(links).forEach( (elem, i) => {
        if(elem[1].getAttribute("data-value") === link){
            elem[1].click()
        }
    });
}')),
                                                  
                                                  tags$h4("Setting up links"),
                                                  tags$p("Next we will have to register the function as an onclick event in the ",tags$code("a()")," element. The code would look like this."),
                                                  tags$pre(tags$code("tags$a('Go to home page',onclick='customHref(...)')")),
                                                  tags$p("In side the function, manually set the desired tab using the value you assigned to that tab. For example, using the tabPanel code above, the call would look like this:"),
                                                  tags$pre(tags$code("customHref('page-home');")),
                                                  tags$p("To move to a specific tab on another page. The onclick event would look like this:"),
                                                  tags$pre(tags$code(paste0("tags$a('Go to specific tab',onclick=","customHref('page');customHref('tab');"))),
                                                  
                                                  
                                                  tags$h3("Final Thoughts"),
                                                  tags$p("I hope this demo was helpful. Feel free to clone this project from github and replace the code with your own. If you have any questions, feel free to open up an issue on github, send me a tweet, or message me on the R community forum.")
                                                  
                                         ),
                                         
                                         # results tabs
                                         tabPanel("The Specific Tab",value="tab-specific",
                                                  
                                                  tags$h3("Okay. That was even cooler."),
                                                  
                                                  # content 
                                                  tags$p("This function works hierarchically. In order to move to a specific tab on another page, you need to work top to bottom. In this case, I made two calls to the", tags$code("customHref"), "function. The first was to the second page and the second was for the specific tab. So let's back up. Click the following link to see how this is done."),
                                                  tags$a("Let's rotate the board!", onclick="customHref('tab-basics');")
                                         )
                                         
                                     ) # end tabset panel
                        )
               )
    ) 
) 

#'////////////////////////////////////////
# SERVER
server <- function(input,output){
    # do something here   
}


#'////////////////////////////////////////
# RUN APP
shinyApp(ui, server)
