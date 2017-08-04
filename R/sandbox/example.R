# Normal Libraries
library(tidyverse)

# devtools::install_github("flovv/RoogleVision")
library(RoogleVision)
library(jsonlite) # to import credentials

# For image processing
# source("http://bioconductor.org/biocLite.R")
# biocLite("EBImage")
library(EBImage)

# For Latitude Longitude Map
library(leaflet)




# Credentials file I downloaded from the cloud console
creds = fromJSON('./R/sandbox/photolog-eae774f22995.json')

# Google Authentication - Use Your Credentials
options("googleAuthR.client_id" = "")
options("googleAuthR.client_secret" = "")

#options("googleAuthR.client_id" = creds$client_id)
#options("googleAuthR.client_secret" = creds$installed$client_secret)
options("googleAuthR.scopes.selected" = c("https://www.googleapis.com/auth/cloud-platform"))
googleAuthR::gar_auth()