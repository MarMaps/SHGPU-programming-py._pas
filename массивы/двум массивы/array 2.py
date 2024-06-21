import random as rd

arr = [
        [rd.randint(-30, 45) for x in range(7)],
        [rd.randint(-30, 45) for x in range(7)],
        [rd.randint(-30, 45) for x in range(7)],
        [rd.randint(-30, 45) for x in range(7)],
        [rd.randint(-30, 45) for x in range(7)],
        [rd.randint(-30, 45) for x in range(7)],
        [rd.randint(-30, 45) for x in range(7)],
        [rd.randint(-30, 45) for x in range(7)],
        [rd.randint(-30, 45) for x in range(7)],
        [rd.randint(-30, 45) for x in range(7)]
    ]

minimum = arr[0][0]
print("текущий массив:")
for i in range(10):
    for k in range(7):
        print(arr[i][k], end="\t")
        if arr[i][k] < minimum:
            minimum = arr[i][k]
    print()

print("минимальный элемент массива: ", minimum)

print("измененный массив:")
for i in range(10):
    for k in range(7):
        arr[i][k] += minimum
        print(arr[i][k], end="\t")
    print()