library(vars)
library(forecast)

## Male
# Forecast model with no covariate
pred_X0_kt <- forecast(auto.arima(res_X0_male$kt))

mu_pred <- res_X0_male$ax %*% t(matrix(1,n)) + res_X0_male$bx %*% t(pred_X0_kt$mean)
res_X0_male$pred_error <- (mu_sample_male-mu_pred)

# Forecast model with GDP
pred_X1_kt <- forecast(auto.arima(res_X1_male$kt))
pred_X1_co <- forecast(auto.arima(res_X1_male$covariate))

mu_pred <- res_X1_male$ax %*% t(matrix(1,n)) + res_X1_male$bx %*% t(pred_X1_kt$mean) + res_X1_male$gx %*% t(pred_X1_co$mean)
res_X1_male$pred_error <- (mu_sample_male-mu_pred)

# Forecast model with GDP and unemployment
pred_X2_kt <- forecast(auto.arima(res_X2_male$kt))
pred_X2_co <- forecast(VAR(res_X2_male$covariate, lag.max = 4))

mu_pred <- res_X2_male$ax %*% t(matrix(1,n)) + res_X2_male$bx %*% t(pred_X2_kt$mean) + res_X2_male$gx %*% t(cbind(pred_X2_co$forecast$GDP$mean,pred_X2_co$forecast$Unemployment...Male$mean))
res_X2_male$pred_error <- (mu_sample_male-mu_pred)

## Female
# Forecast model with no covariate
pred_X0_kt <- forecast(auto.arima(res_X0_female$kt))

mu_pred <- res_X0_female$ax %*% t(matrix(1,n)) + res_X0_female$bx %*% t(pred_X0_kt$mean)
res_X0_female$pred_error <- (mu_sample_female-mu_pred)

# Forecast model with GDP
pred_X1_kt <- forecast(auto.arima(res_X1_female$kt))
pred_X1_co <- forecast(auto.arima(res_X1_female$covariate))

mu_pred <- res_X1_female$ax %*% t(matrix(1,n)) + res_X1_female$bx %*% t(pred_X1_kt$mean) + res_X1_female$gx %*% t(pred_X1_co$mean)
res_X1_female$pred_error <- (mu_sample_female-mu_pred)

# Forecast model with GDP and unemployment
pred_X2_kt <- forecast(auto.arima(res_X2_female$kt))
pred_X2_co <- forecast(VAR(res_X2_female$covariate, lag.max = 4))

mu_pred <- res_X2_female$ax %*% t(matrix(1,n)) + res_X2_female$bx %*% t(pred_X2_kt$mean) + res_X2_female$gx %*% t(cbind(pred_X2_co$forecast$GDP$mean,pred_X2_co$forecast$Unemployment...Female$mean))
res_X2_female$pred_error <- (mu_sample_female-mu_pred)

