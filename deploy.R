library(rsconnect)

# a function to stop the script when one of the variables cannot be found
# and to strip quotation marks from the secrets when you supplied them
error_on_missing_name <- function(name) {
  var <- Sys.getenv(name, unset = NA)
  if(is.na(var)) {
    stop(paste0("cannot find ", name, " !"), call. = FALSE)
  }
  gsub("\"", "", var)
}

# Authenticate
setAccountInfo(name = ("practicemeltshiny"),
               token = ("A5E3C2E66A8F3C6D12F9603F8EFBB7F1"),
               secret = ("ChlfnF5NsIu3o4dg1mQIyHUlxSMLuy9+nXxKMt17"))

# Deploy the application.
deployApp(appFiles = c("ui.R", "server.R", "likes.rds"), forceUpdate = TRUE )