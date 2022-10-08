strings = ["aa-2", "ab-100", "aa-10", "ba-25", "ab-3"]
print(sort(strings, by = x->split(x, "-") |> v->(v[1], parse(Int, v[2]))))