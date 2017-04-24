library(demography)
library(readxl)
library(vars)
library(tilting)

# Load the plc function for estimation of the model
source('mortality.R' , local = TRUE)

# Load the data
load('mortality_data.Rdata')

## Compute model for Male
Ext <- CAN_mort$pop$male
Dxt <- CAN_mort$rate$male * Ext
    
res_X0_male <- plc_X(Dxt, Ext, age_window = age_window, time_window = time_window)
res_X1_male  <- plc_X(Dxt, Ext, covariate = covariate1, age_window = age_window, time_window = time_window)
res_X2_male  <- plc_X(Dxt, Ext, covariate = covariate2_male, age_window = age_window, time_window = time_window)

# Extract log mortality rates for prediction window
pred_time_window <- 2000:2009
n <- length(pred_time_window)

Ext_pred <- Ext[rownames(Ext) %in% age_window, colnames(Ext) %in% pred_time_window]
Dxt_pred <- Dxt[rownames(Dxt) %in% age_window, colnames(Dxt) %in% pred_time_window]

mu_sample_male <- log(Dxt_pred/Ext_pred)

## Compute model for Female
Ext <- CAN_mort$pop$female
Dxt <- CAN_mort$rate$female * Ext

res_X0_female <- plc_X(Dxt, Ext, age_window = age_window, time_window = time_window)
res_X1_female  <- plc_X(Dxt, Ext, covariate = covariate1, age_window = age_window, time_window = time_window)
res_X2_female  <- plc_X(Dxt, Ext, covariate = covariate2_female, age_window = age_window, time_window = time_window)

# Extract log mortality rates for prediction window
pred_time_window <- 2000:2009
n <- length(pred_time_window)

Ext_pred <- Ext[rownames(Ext) %in% age_window, colnames(Ext) %in% pred_time_window]
Dxt_pred <- Dxt[rownames(Dxt) %in% age_window, colnames(Dxt) %in% pred_time_window]

mu_sample_female <- log(Dxt_pred/Ext_pred)