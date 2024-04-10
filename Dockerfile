FROM rocker/shiny:latest
RUN install2.r rsconnect tibble dplyr stringr rtweet htmltools lubridate bslib reactable
WORKDIR /home/shinytweet
COPY ui.R ui.R 
COPY server.R server.R 
COPY likes.rds likes.rds
COPY deploy.R deploy.R
CMD Rscript deploy.R