## Likelihood ratio
# Male
res_X0_male$L2
res_X1_male$L2
res_X2_male$L2
# Female
res_X0_female$L2
res_X1_female$L2
res_X2_female$L2

## Change in Likelihood ratio
# Male
(res_X0_male$L2-res_X1_male$L2)/res_X0_male$L2
(res_X0_male$L2-res_X2_male$L2)/res_X0_male$L2
# Female
(res_X0_female$L2-res_X1_female$L2)/res_X0_female$L2
(res_X0_female$L2-res_X2_female$L2)/res_X0_female$L2

## AIC and BIC
# Male
res_X0_male$AIC
res_X1_male$AIC
res_X2_male$AIC

res_X0_male$BIC
res_X1_male$BIC
res_X2_male$BIC
# Female
res_X0_female$AIC
res_X1_female$AIC
res_X2_female$AIC

res_X0_female$BIC
res_X1_female$BIC
res_X2_female$BIC

# RMSE
# Male
sqrt(mean(res_X0_male$pred_error^2))
sqrt(mean(res_X1_male$pred_error^2))
sqrt(mean(res_X2_male$pred_error^2))
# Female
sqrt(mean(res_X0_female$pred_error^2))
sqrt(mean(res_X1_female$pred_error^2))
sqrt(mean(res_X2_female$pred_error^2))

