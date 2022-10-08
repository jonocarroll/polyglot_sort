suppressMessages(library(dplyr, quietly = TRUE))
# input vector
s <- c("aa-2", "ab-100", "aa-10", "ba-25", "ab-3")

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
