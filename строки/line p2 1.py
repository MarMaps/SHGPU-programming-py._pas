s = input("Введите строку: ")
c = 0
for i in s:
    if i.isdigit():
        c += 1
print(f"Количество цифр в строке: {c}")