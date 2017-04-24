library(demography)
library(readxl)
library(vars)
library(tilting)

username <- "neves.julien@gmail.com"
password <- "plokijuh"

# Import raw data
CAN_mort <- hmd.mx("CAN", username, password, "Canada")
CAN_macro <- read_excel("~/Projects/life/Code/Data/canada2.xlsx")

CAN_macro <- as.matrix(t(CAN_macro[,-1]))
colnames(CAN_macro) <- c("GDP", "Unemployment - Male", "Unemployment - Female", "Unemployment - Total", "Health - Public", "Health - Total")
CAN_macro[,"GDP"] <- log(CAN_macro[,"GDP"])

# Set time and age window
time_window <- 1970:1999
age_window <- 0:99

# Create covariates matrix
covariate1 <- CAN_macro[, "GDP", drop = FALSE]
covariate2_male <- CAN_macro[, c("GDP", "Unemployment - Male")]
covariate2_female <- CAN_macro[, c("GDP", "Unemployment - Female")]