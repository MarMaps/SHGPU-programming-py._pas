import random as rd

arr = [
        [rd.randint(4,20) for x in range(6)],
        [rd.randint(4,20) for x in range(6)],
        [rd.randint(4,20) for x in range(6)],
        [rd.randint(4,20) for x in range(6)],
        [rd.randint(4,20) for x in range(6)],
        [rd.randint(4,20) for x in range(6)],
        [rd.randint(4,20) for x in range(6)]
    ]

print("текущий массив:")
for i in range(7):
    for k in range(6):
        print(arr[i][k], end="\t")
    print()

summ_col = 0
for i in range(7):
    for k in range(1, 6, 2):
        summ_col += arr[i][k]

print("сумма =", summ_col)