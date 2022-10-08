# input vector
s <- c("aa-2", "ab-100", "aa-10", "ba-25", "ab-3")
# split into pairs of strings
x <- strsplit(s, "-")
# take elements of s sorted by the first elements of x then
#  the second (as integers)
s[order(sapply(x, `[[`, 1), as.integer(sapply(x, `[[`, 2)))]


suppressMessages(library(dplyr, quietly = TRUE))
# read strings as fields delimited by '-', 
#  expecting character and integer
s %>% read.delim(
    text = .,
    sep = "-",
    header = FALSE,
    colClasses = c("character", "integer")
) %>%
    # sort by first then second column
    arrange(V1, V2) %>%
    # collapse to single string per row
    mutate(res = paste(V1, V2, sep = "-")) %>%
    pull()
