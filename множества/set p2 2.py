import random

numbers = random.sample(range(1, 6), 3)

guesses = 0

guessed_numbers = []

while guesses < 3:
    guess = [int(x) for x in input("Введите 3 числа: ").split()]

    for i in range(3):
        if guess[i] == numbers[i]:
            guessed_numbers.append(guess[i])
        else:
            print(f"Неверно: {guess[i]}")

    guesses += 1

print(f"Угадано: {guessed_numbers}")
print(f"Не угаданы: {[x for x in numbers if x not in guessed_numbers]}")
print(f"Количество попыток: {guesses}")
