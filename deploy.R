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
               token = ("8B14429957A5C5AD977ECB77B147A5CB"),
               secret = ("a01FiKOY/6zQE1bGNlIWhHh8yCEGNF/tEUJRWKyV"))

# Deploy the application.
deployApp(appFiles = c("ui.R", "server.R", "likes.rds"))