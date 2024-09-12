marks <- c(55, 60, 71, 63, 55, 65, 50, 55, 58, 59, 61, 63, 65, 67, 71, 72, 75)
sorted_marks <- sort(marks)
num_bins <- 3
n <- length(sorted_marks)
bin_size <- ceiling(n / num_bins)
bins_equal_frequency <- split(sorted_marks, rep(1:num_bins, each=bin_size, length.out=n))
equal_frequency_breaks <- c(min(marks), sapply(bins_equal_frequency, max))
min_mark <- min(marks)
max_mark <- max(marks)
bin_width <- (max_mark - min_mark) / num_bins
bins_equal_width <- cut(marks, breaks=seq(min_mark, max_mark, by=bin_width), include.lowest=TRUE)
par(mfrow=c(1,2))
hist(marks, breaks=equal_frequency_breaks, main="Equal-Frequency Partitioning", xlab="Marks", col="blue", border="black")
hist(marks, breaks=seq(min_mark, max_mark, by=bin_width), main="Equal-Width Partitioning", xlab="Marks", col="green", border="black")
