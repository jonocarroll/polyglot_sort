strings = String["aa-2", "ab-100", "aa-10", "ba-25", "ab-3"]
print(join.(sort(split.(strings, "-"), by = x -> (x[1], parse(Int, x[2]))), "-"))