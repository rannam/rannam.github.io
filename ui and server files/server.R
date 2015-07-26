
shinyServer(
        function(input, output) {
                output$betaDist <- renderPlot({
                         
                        interval      <- input$length
                        shape1param   <- input$shape1param
                        shape2param   <- input$shape2param
                        
                        
                        x=seq(0,1,length=interval)
                        
                        y=pbeta(x,shape1param,shape2param, ncp = 0, lower.tail = input$lowerTail)
                        plot(x,y, type="l", col="blue")
                        
                        
                        
                })
        }
)