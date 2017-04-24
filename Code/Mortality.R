plc_X <- function(Dxt, Ext, covariate = NULL, age_window = NULL, time_window = NULL, reltol = 1e-6, abstol = 1e-6, maxit = 1e4){
    require(pracma)
    
    Ext <- Ext[rownames(Ext) %in% age_window, colnames(Ext) %in% time_window]
    Dxt <- Dxt[rownames(Dxt) %in% age_window, colnames(Dxt) %in% time_window]
    
    
    if(is.null(age_window)) age_window <- dimnames(Dxt)[1]
    
    if(is.null(time_window)) time_window <- dimnames(Dxt)[2]
    
    if(is.null(covariate)){
        X <- matrix(1,length(time_window),1)
        dimnames(X) <- list(time_window,"const")
        k <- 1
    }else{
        covariate <- covariate[rownames(covariate) %in% time_window, , drop = FALSE]
        covariate <- detrend(covariate, tt = 'constant')
        X <- cbind(rep(1,dim(covariate)[1]),covariate)
        k <- dim(X)[2]
    }
    
    gx <- matrix(0,length(age_window),k)
    bx <- matrix(1,length(age_window),1)
    kt <- matrix(0,1,length(time_window)) 
    
    proj_X <-  projection(X, active = 1:k)
    
    count <- 1
    oldlogLike <- 0
    logLike <- sum(Dxt * (gx %*% t(X) + bx %*% kt)  - Ext * exp(gx %*% t(X) + bx %*% kt))
    
    while ( abs(logLike/ oldlogLike - 1) >= reltol && abs(oldlogLike - logLike) >= abstol && count <= maxit){
        
        oldlogLike <- logLike
        
        gx <- gx - (Dxt  - Ext * exp(gx %*% t(X) + bx %*% kt)) %*% X/(- (Ext * exp(gx %*% t(X) + bx %*% kt)) %*% X^2)
        
        kt <- kt - t(bx) %*% (Dxt  - Ext * exp(gx %*% t(X) + bx %*% kt))/(- t(bx^2) %*% (Ext * exp(gx %*% t(X) + bx %*% kt)))
        
        # kt <- kt - mean(kt)
        
        kt <- kt - kt %*% proj_X
        
        bx <- bx - (Dxt  - Ext * exp(gx %*% t(X) + bx %*% kt)) %*% t(kt)/(- (Ext * exp(gx %*% t(X) + bx %*% kt)) %*% t(kt^2))
        
        logLike <- sum(Dxt * (gx %*% t(X) + bx %*% kt)  - Ext * exp(gx %*% t(X) + bx %*% kt))
        count <- count + 1
        
        cat("Iteration", count, " Abs:", abs(oldlogLike - logLike), " Rel:", abs(logLike/oldlogLike-1), " L:", logLike,"\r")
        utils::flush.console()
    }
    kt <- kt * sum(bx)
    
    bx <- bx / sum(bx)
    
    
    pred_mu <- gx %*% t(X) + bx %*% kt
    
    L2 <- 2* sum(Dxt * log(Dxt/(Ext * exp(pred_mu))))
    
    real_mu <- log(Dxt[rownames(Dxt) %in% age_window, colnames(Dxt) %in% time_window]/Ext[rownames(Ext) %in% age_window, colnames(Ext) %in% time_window])
    
    error <- real_mu - pred_mu
    
    nb <- length(age_window) + length(time_window) + length(age_window)*k - k
    
    AIC <- 2*nb -2*logLike
    BIC <- log(length(time_window)*length(age_window))*nb-2*logLike
    
    
    ax <- gx[,1, drop= FALSE]
    
    if(k>1){
        dimnames(gx) <- c(dimnames(Ext)[1],dimnames(X)[2])
        gx <- gx[,-1, drop= FALSE]
    }else{
        gx <- NULL
    }
    
    
    dimnames(error) <- dimnames(Ext)
    dimnames(pred_mu) <- dimnames(Ext)
    dimnames(ax) <- c(dimnames(Ext)[1],"alpha")
    dimnames(bx) <- c(dimnames(Ext)[1],"beta")
    kt <- ts(t(kt), start = time_window[1])
    
    if(!is.null(covariate)) covariate <- ts(covariate, start = time_window[1])
    
    return(list(ax = ax, gx = gx, bx = bx, kt = kt, L2 = L2, LL = logLike, AIC = AIC, BIC = BIC, covariate = covariate, pred_mu = pred_mu, error = error))
}