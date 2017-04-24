## Male
# Error
error_age_X0_male <- rowSums(res_X0_male$error)
error_age_X1_male <- rowSums(res_X1_male$error)
error_age_X2_male <- rowSums(res_X2_male$error)

abs_error_age_X0_male <- rowSums(abs(res_X0_male$error))
abs_error_age_X1_male <- rowSums(abs(res_X1_male$error))
abs_error_age_X2_male <- rowSums(abs(res_X2_male$error))

error_time_X0_male <- colSums(res_X0_male$error)
error_time_X1_male <- colSums(res_X1_male$error)
error_time_X2_male <- colSums(res_X2_male$error)

abs_error_time_X0_male <- colSums(abs(res_X0_male$error))
abs_error_time_X1_male <- colSums(abs(res_X1_male$error))
abs_error_time_X2_male <- colSums(abs(res_X2_male$error))


# Pred Error

pred_error_age_X0_male <- rowSums(res_X0_male$pred_error)
pred_error_age_X1_male <- rowSums(res_X1_male$pred_error)
pred_error_age_X2_male <- rowSums(res_X2_male$pred_error)

abs_pred_error_age_X0_male <- rowSums(abs(res_X0_male$pred_error))
abs_pred_error_age_X1_male <- rowSums(abs(res_X1_male$pred_error))
abs_pred_error_age_X2_male <- rowSums(abs(res_X2_male$pred_error))

pred_error_time_X0_male <- colSums(res_X0_male$pred_error)
pred_error_time_X1_male <- colSums(res_X1_male$pred_error)
pred_error_time_X2_male <- colSums(res_X2_male$pred_error)

abs_pred_error_time_X0_male <- colSums(abs(res_X0_male$pred_error))
abs_pred_error_time_X1_male <- colSums(abs(res_X1_male$pred_error))
abs_pred_error_time_X2_male <- colSums(abs(res_X2_male$pred_error))

## Female

# Error
error_age_X0_female <- rowSums(res_X0_female$error)
error_age_X1_female <- rowSums(res_X1_female$error)
error_age_X2_female <- rowSums(res_X2_female$error)

abs_error_age_X0_female <- rowSums(abs(res_X0_female$error))
abs_error_age_X1_female <- rowSums(abs(res_X1_female$error))
abs_error_age_X2_female <- rowSums(abs(res_X2_female$error))

error_time_X0_female <- colSums(res_X0_female$error)
error_time_X1_female <- colSums(res_X1_female$error)
error_time_X2_female <- colSums(res_X2_female$error)

abs_error_time_X0_female <- colSums(abs(res_X0_female$error))
abs_error_time_X1_female <- colSums(abs(res_X1_female$error))
abs_error_time_X2_female <- colSums(abs(res_X2_female$error))


# Pred Error

pred_error_age_X0_female <- rowSums(res_X0_female$pred_error)
pred_error_age_X1_female <- rowSums(res_X1_female$pred_error)
pred_error_age_X2_female <- rowSums(res_X2_female$pred_error)

abs_pred_error_age_X0_female <- rowSums(abs(res_X0_female$pred_error))
abs_pred_error_age_X1_female <- rowSums(abs(res_X1_female$pred_error))
abs_pred_error_age_X2_female <- rowSums(abs(res_X2_female$pred_error))

pred_error_time_X0_female <- colSums(res_X0_female$pred_error)
pred_error_time_X1_female <- colSums(res_X1_female$pred_error)
pred_error_time_X2_female <- colSums(res_X2_female$pred_error)

abs_pred_error_time_X0_female <- colSums(abs(res_X0_female$pred_error))
abs_pred_error_time_X1_female <- colSums(abs(res_X1_female$pred_error))
abs_pred_error_time_X2_female <- colSums(abs(res_X2_female$pred_error))


