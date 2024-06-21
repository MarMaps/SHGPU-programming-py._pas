arr_bin = [1, 0, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 0, 0, 1, 1, 1, 1]
optimized = []

count = 0
curr_bit = arr_bin[0]

if arr_bin[0] == 1:
    optimized.append(0)

for i in arr_bin:
    if i == curr_bit:
        count += 1
    else:
        optimized.append(count)
        curr_bit = i
        count = 1

optimized.append(count)
print(optimized)