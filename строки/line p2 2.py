s = input("Введите строку: ")
signs = [".", ",", "!", "?", ";", ":", "..."]
for sign in signs:
    if sign in s:
        s = s.replace (sign, sign + " ")
print(s.replace(" ", " "))