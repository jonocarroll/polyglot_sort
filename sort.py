def parts(s):
    letters, nums = s.split("-")
    return letters, int(nums)

strings = ["aa-2", "ab-100", "aa-10", "ba-25", "ab-3"]

print(sorted(strings, key=parts))

