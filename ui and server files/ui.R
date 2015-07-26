shinyUI(pageWithSidebar(
        headerPanel("Beta Distribution"),
        sidebarPanel(
                sliderInput('length', 'Number of data points',value = 5, min = 1, max = 10, step = 1),
                numericInput('shape1param',  'First shape parameter', 7, min = 1, max = 10, step = 1),
                numericInput('shape2param', 'Second shape parameter', 7, min = 1, max = 10, step = 1),
                checkboxInput("lowerTail", "Lower tail ? :", TRUE),
                submitButton('Submit')
        ),
        mainPanel(
                verbatimTextOutput("lowerTail"),
                plotOutput('betaDist'),
                
                h3('Beta distribution demo (source : wikipedia.org)'),
                p('In probability theory and statistics, the beta distribution is a 
                  family of continuous probability distribution defined in the interval [0,1]
                  parameterized by two positive shape parameters, that appear as exponents of the 
                  random variable and control the shape of the distribution'),
                p(' The beta distribution has been applied to model the behavior of random
                  variables limited to intervals of finite length in a wide variety of disciplines.'),
                h3('Parameters'),
                h4('Number of data points'),
                p('This is just the number of data points about how discretely the graph to be shown.
                  The more data points we use, smoother the graph will be'),
                h4('Shape parameters 1 and 2'),
                p('Non-negative parameters of the beta distribution'),
                h4('Lower tail'),
                p('This is for whether to show lower side tail of the distribution or not')
                
                
        )
))