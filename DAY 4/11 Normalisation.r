strike_rates <- c(100, 70, 60, 90, 90)
min_val <- min(strike_rates)
max_val <- max(strike_rates)
min_max_normalization <- (strike_rates - min_val) / (max_val - min_val)
min_max_normalization
mean_val <- mean(strike_rates)
std_dev <- sd(strike_rates)
z_score_normalization <- (strike_rates - mean_val) / std_dev
z_score_normalization
mean_absolute_deviation <- mean(abs(strike_rates - mean_val))
z_score_mad_normalization <- (strike_rates - mean_val) / mean_absolute_deviation
z_score_mad_normalization
max_abs_val <- max(abs(strike_rates))
j <- ceiling(log10(max_abs_val))
decimal_scaling_normalization <- strike_rates / (10^j)
decimal_scaling_normalization
