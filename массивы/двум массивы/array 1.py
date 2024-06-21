import random as rd

arr = [
        [rd.randint(-5,5) for x in range(7)],
        [rd.randint(-5,5) for x in range(7)],
        [rd.randint(-5,5) for x in range(7)],
        [rd.randint(-5,5) for x in range(7)],
        [rd.randint(-5,5) for x in range(7)]
    ]

c = 0
for i in arr:
    for item in i:
        print(item, end="\t")
        if item == 0:
            c += 1
    print()

print("Элементы, равные нулю: ", c)

