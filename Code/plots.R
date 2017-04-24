## Male
# Model

pdf('~/Projects/life/TeX/CAN_ax_male.pdf')
ts.plot(ts(res_X0_male$ax), ts(res_X1_male$ax), ts(res_X2_male$ax), gpars = list(lty = c(1:3), col = c(1:3), xlab = "Age", ylab = ""))
legend("topleft", legend=c("LC","LC-GDP","LC-GDP+Unemployment"), lty = c(1:3), col = c(1:3))
dev.off()

pdf('~/Projects/life/TeX/CAN_bx_male.pdf')
ts.plot(ts(res_X0_male$bx[,1]),ts(res_X1_male$bx[,1]), ts(res_X2_male$bx[,1]), gpars = list(lty = c(1:3), col = c(1:3), xlab = "Age", ylab = ""))
legend("topright", legend=c("LC","LC-GDP","LC-GDP+Unemployment"), lty = c(1:3), col = c(1:3))
dev.off()

pdf('~/Projects/life/TeX/CAN_kt_male.pdf')
ts.plot(res_X0_male$kt, res_X1_male$kt, res_X2_male$kt, gpars = list(lty = c(1:3), col = c(1:3), xlab = "Year", ylab = ""))
legend("bottomleft", legend=c("LC","LC-GDP","LC-GDP+Unemployment"), lty = c(1:3), col = c(1:3))
dev.off()

pdf('~/Projects/life/TeX/CAN_g1x_male.pdf')
ts.plot(ts(res_X1_male$gx[,1]), ts(res_X2_male$gx[,1]), gpars = list(lty = c(2:3), col = c(2:3), xlab = "Age", ylab = ""))
legend("topright", c("LC-GDP","LC-GDP+Unemployment"), lty = c(2:3), col = c(2:3))
dev.off()

pdf('~/Projects/life/TeX/CAN_g2x_male.pdf')
ts.plot(ts(res_X2_male$gx[,2]), gpars = list(lty = 3, col = 3, xlab = "Age", ylab = ""))
legend("bottomright", legend=c("LC-GDP+Unemployment"), lty = c(3), col = c(3))
dev.off()


# Errors

pdf('~/Projects/life/TeX/CAN_error_age_male.pdf')
ts.plot(ts(error_age_X0_male, start = 0), ts(error_age_X1_male, start = 0),ts(error_age_X2_male, start = 0), gpars = list(lty = c(1:3), col = c(1:3), xlab = "Age", ylab = ""))
legend("bottomright", legend=c("LC","LC-GDP","LC-GDP+Unemployment"), lty = c(1:3), col = c(1:3))
dev.off()

pdf('~/Projects/life/TeX/CAN_abs_error_age_male.pdf')
ts.plot(ts(abs_error_age_X0_male, start = 0), ts(abs_error_age_X1_male, start = 0),ts(abs_error_age_X2_male, start = 0), gpars = list(lty = c(1:3), col = c(1:3), xlab = "Age", ylab = ""))
legend("topright", legend=c("LC","LC-GDP","LC-GDP+Unemployment"), lty = c(1:3), col = c(1:3))
dev.off()

pdf('~/Projects/life/TeX/CAN_error_time_male.pdf')
ts.plot(ts(error_time_X0_male, start = 1970), ts(error_time_X1_male, start = 1970),ts(error_time_X2_male, start = 1970), gpars = list(lty = c(1:3), col = c(1:3), xlab = "Time", ylab = ""))
legend("bottomright", legend=c("LC","LC-GDP","LC-GDP+Unemployment"), lty = c(1:3), col = c(1:3))
dev.off()

pdf('~/Projects/life/TeX/CAN_abs_error_time_male.pdf')
ts.plot(ts(abs_error_time_X0_male, start = 1970), ts(abs_error_time_X1_male, start = 1970),ts(abs_error_time_X2_male, start = 1970), gpars = list(lty = c(1:3), col = c(1:3), xlab = "Time", ylab = ""))
legend("topleft", legend=c("LC","LC-GDP","LC-GDP+Unemployment"), lty = c(1:3), col = c(1:3))
dev.off()

# Pred Errors

pdf('~/Projects/life/TeX/CAN_pred_error_age_male.pdf')
ts.plot(ts(pred_error_age_X0_male, start = 0), ts(pred_error_age_X1_male, start = 0),ts(pred_error_age_X2_male, start = 0), gpars = list(lty = c(1:3), col = c(1:3), xlab = "Age", ylab = ""))
legend("topright", legend=c("LC","LC-GDP","LC-GDP+Unemployment"), lty = c(1:3), col = c(1:3))
dev.off()

pdf('~/Projects/life/TeX/CAN_abs_pred_error_age_male.pdf')
ts.plot(ts(abs_pred_error_age_X0_male, start = 0), ts(abs_pred_error_age_X1_male, start = 0),ts(abs_pred_error_age_X2_male, start = 0), gpars = list(lty = c(1:3), col = c(1:3), xlab = "Age", ylab = ""))
legend("topright", legend=c("LC","LC-GDP","LC-GDP+Unemployment"), lty = c(1:3), col = c(1:3))
dev.off()

pdf('~/Projects/life/TeX/CAN_pred_error_time_male.pdf')
ts.plot(ts(pred_error_time_X0_male, start = 2000), ts(pred_error_time_X1_male, start = 2000),ts(pred_error_time_X2_male, start = 2000), gpars = list(lty = c(1:3), col = c(1:3), xlab = "Time", ylab = ""))
legend("bottomleft", legend=c("LC","LC-GDP","LC-GDP+Unemployment"), lty = c(1:3), col = c(1:3))
dev.off()

pdf('~/Projects/life/TeX/CAN_abs_pred_error_time_male.pdf')
ts.plot(ts(abs_pred_error_time_X0_male, start = 2000), ts(abs_pred_error_time_X1_male, start = 2000),ts(abs_pred_error_time_X2_male, start = 2000), gpars = list(lty = c(1:3), col = c(1:3), xlab = "Time", ylab = ""))
legend("topleft", legend=c("LC","LC-GDP","LC-GDP+Unemployment"), lty = c(1:3), col = c(1:3))
dev.off()


## Female

# Model

pdf('~/Projects/life/TeX/CAN_ax_female.pdf')
ts.plot(ts(res_X0_female$ax), ts(res_X1_female$ax), ts(res_X2_female$ax), gpars = list(lty = c(1:3), col = c(1:3), xlab = "Age", ylab = ""))
legend("topleft", legend=c("LC","LC-GDP","LC-GDP+Unemployment"), lty = c(1:3), col = c(1:3))
dev.off()

pdf('~/Projects/life/TeX/CAN_bx_female.pdf')
ts.plot(ts(res_X0_female$bx[,1]),ts(res_X1_female$bx[,1]), ts(res_X2_female$bx[,1]), gpars = list(lty = c(1:3), col = c(1:3), xlab = "Age", ylab = ""))
legend("topright", legend=c("LC","LC-GDP","LC-GDP+Unemployment"), lty = c(1:3), col = c(1:3))
dev.off()

pdf('~/Projects/life/TeX/CAN_kt_female.pdf')
ts.plot(res_X0_female$kt, res_X1_female$kt, res_X2_female$kt, gpars = list(lty = c(1:3), col = c(1:3), xlab = "Year", ylab = ""))
legend("bottomleft", legend=c("LC","LC-GDP","LC-GDP+Unemployment"), lty = c(1:3), col = c(1:3))
dev.off()

pdf('~/Projects/life/TeX/CAN_g1x_female.pdf')
ts.plot(ts(res_X1_female$gx[,1]), ts(res_X2_female$gx[,1]), gpars = list(lty = c(2:3), col = c(2:3), xlab = "Age", ylab = ""))
legend("topright", c("LC-GDP","LC-GDP+Unemployment"), lty = c(2:3), col = c(2:3))
dev.off()

pdf('~/Projects/life/TeX/CAN_g2x_female.pdf')
ts.plot(ts(res_X2_female$gx[,2]), gpars = list(lty = 3, col = 3, xlab = "Age", ylab = ""))
legend("bottomright", legend=c("LC-GDP+Unemployment"), lty = c(3), col = c(3))
dev.off()


# Errors

pdf('~/Projects/life/TeX/CAN_error_age_female.pdf')
ts.plot(ts(error_age_X0_female, start = 0), ts(error_age_X1_female, start = 0),ts(error_age_X2_female, start = 0), gpars = list(lty = c(1:3), col = c(1:3), xlab = "Age", ylab = ""))
legend("bottomright", legend=c("LC","LC-GDP","LC-GDP+Unemployment"), lty = c(1:3), col = c(1:3))
dev.off()

pdf('~/Projects/life/TeX/CAN_abs_error_age_female.pdf')
ts.plot(ts(abs_error_age_X0_female, start = 0), ts(abs_error_age_X1_female, start = 0),ts(abs_error_age_X2_female, start = 0), gpars = list(lty = c(1:3), col = c(1:3), xlab = "Age", ylab = ""))
legend("topright", legend=c("LC","LC-GDP","LC-GDP+Unemployment"), lty = c(1:3), col = c(1:3))
dev.off()

pdf('~/Projects/life/TeX/CAN_error_time_female.pdf')
ts.plot(ts(error_time_X0_female, start = 1970), ts(error_time_X1_female, start = 1970),ts(error_time_X2_female, start = 1970), gpars = list(lty = c(1:3), col = c(1:3), xlab = "Time", ylab = ""))
legend("bottomright", legend=c("LC","LC-GDP","LC-GDP+Unemployment"), lty = c(1:3), col = c(1:3))
dev.off()

pdf('~/Projects/life/TeX/CAN_abs_error_time_female.pdf')
ts.plot(ts(abs_error_time_X0_female, start = 1970), ts(abs_error_time_X1_female, start = 1970),ts(abs_error_time_X2_female, start = 1970), gpars = list(lty = c(1:3), col = c(1:3), xlab = "Time", ylab = ""))
legend("topleft", legend=c("LC","LC-GDP","LC-GDP+Unemployment"), lty = c(1:3), col = c(1:3))
dev.off()

# Pred Errors

pdf('~/Projects/life/TeX/CAN_pred_error_age_female.pdf')
ts.plot(ts(pred_error_age_X0_female, start = 0), ts(pred_error_age_X1_female, start = 0),ts(pred_error_age_X2_female, start = 0), gpars = list(lty = c(1:3), col = c(1:3), xlab = "Age", ylab = ""))
legend("topright", legend=c("LC","LC-GDP","LC-GDP+Unemployment"), lty = c(1:3), col = c(1:3))
dev.off()

pdf('~/Projects/life/TeX/CAN_abs_pred_error_age_female.pdf')
ts.plot(ts(abs_pred_error_age_X0_female, start = 0), ts(abs_pred_error_age_X1_female, start = 0),ts(abs_pred_error_age_X2_female, start = 0), gpars = list(lty = c(1:3), col = c(1:3), xlab = "Age", ylab = ""))
legend("topright", legend=c("LC","LC-GDP","LC-GDP+Unemployment"), lty = c(1:3), col = c(1:3))
dev.off()

pdf('~/Projects/life/TeX/CAN_pred_error_time_female.pdf')
ts.plot(ts(pred_error_time_X0_female, start = 2000), ts(pred_error_time_X1_female, start = 2000),ts(pred_error_time_X2_female, start = 2000), gpars = list(lty = c(1:3), col = c(1:3), xlab = "Time", ylab = ""))
legend("bottomleft", legend=c("LC","LC-GDP","LC-GDP+Unemployment"), lty = c(1:3), col = c(1:3))
dev.off()

pdf('~/Projects/life/TeX/CAN_abs_pred_error_time_female.pdf')
ts.plot(ts(abs_pred_error_time_X0_female, start = 2000), ts(abs_pred_error_time_X1_female, start = 2000),ts(abs_pred_error_time_X2_female, start = 2000), gpars = list(lty = c(1:3), col = c(1:3), xlab = "Time", ylab = ""))
legend("topleft", legend=c("LC","LC-GDP","LC-GDP+Unemployment"), lty = c(1:3), col = c(1:3))
dev.off()
