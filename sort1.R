# input vector
s <- c("aa-2", "ab-100", "aa-10", "ba-25", "ab-3")
# split into pairs of strings
x <- strsplit(s, "-")
# take elements of s sorted by the first elements of x then
#  the second (as integers)
s[order(sapply(x, `[[`, 1), as.integer(sapply(x, `[[`, 2)))]