

shinyServer(function(input, output) {

    rv <- reactiveValues(
        
    )
    
    observeEvent(input$ok, {
        removeModal()
        
        ## users need connect privilege to data bank
        rv$con <- catchDbCon(
            'DB', # name of data bank
            input$user, input$pin
        )
    })
    
    observe({
        
    })
    
    showModal(loginModal())
    

})
