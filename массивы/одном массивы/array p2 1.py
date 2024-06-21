import random

arr = [random.randint(2, 30) for _ in range(10)]

print("Исходный массив:", arr)

for i in range(0, len(arr)-1, 2):
    arr[i], arr[i+1] = arr[i+1], arr[i]

print("Измененный массив:", arr)