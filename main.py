import random

name = input('Please enter your name: ')
print(f"Hello {name}, now answer this questions\n")

loop_times = int(input('Enter the number of questions: '))

score = 0

for i in range(loop_times):
    num1 = random.randint(1, 10)
    num2 = random.randint(1, 10)
    ope = random.choice(['+','*','-'])
    question = f"{num1} {ope} {num2}"
    answer = eval(question)
    print(question)
    user_answer = int(input('Enter your answer: '))
    if user_answer == answer:
        print('Right answer\n')
        score += 1
        print(f"score: {score}")
    else:
        print('Wrong answer\n')
        print(f'The right answer is {answer}')

print(f"Your final score is {score}")