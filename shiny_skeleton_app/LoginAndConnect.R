library(RPostgres)
library(dplyr)

dbCon <- function(dbname, user, password) {
  return(
    dbConnect(
      Postgres(),
      dbname = dbname,
      host = 'localhost',
      port = 5432,
      user = user,
      password = password
    )
  )
}

loginModal <- function(failed = FALSE) {
  modalDialog(
    
    textInput('user', 'username', value = ''),
    passwordInput('pin', 'password', value = ''),
    
    if (failed)
      div(tags$b("Login failed. Please check username and password.", style = "color: red;")),
    
    footer = tagList(
      actionButton("ok", "OK")
    )
  )
}

catchDbCon <- function(dbname, user, password) {
  
  dbCon <- tryCatch({
    dbCon(dbname, user, password)
    },
    ## show modal with login fail message if connection failed
    error = function(err) {
      print(err)
      showModal(loginModal(failed = TRUE))
      return()
    }
  )
  
  return(
    dbCon
  )
} 
