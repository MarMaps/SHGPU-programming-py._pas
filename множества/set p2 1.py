s = input()

vowels = 0
consonants = 0

vowels_set = set("ёуеыаоэяию")

for char in s:
  if char in vowels_set:
    vowels += 1
  elif char.isalpha():
    consonants += 1

print(f"Количество гласных букв: {vowels}")
print(f"Количество согласных букв: {consonants}")

new_str = ""
for char2 in s:
    if char2 not in new_str:
        new_str += char2
print(new_str)