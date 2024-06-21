import string
import random

def generate(N):
    alphabet = string.ascii_lowercase
    first_letter = random.choice(string.ascii_uppercase)
    generated_string = first_letter + ''.join(random.choice(alphabet) for _ in range(N-1))
    revers = generated_string[::-1]
    return generated_string, revers
N = 15 
original_string, revers = generate(N)
print("Сгенерированная строка:", original_string)
print("Строка в обратном порядке:", revers)