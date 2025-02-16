# Assignment  - Write a python program to reverse a number using a while loop.

#taking input from user
num = int(input("Enter the number : "))
reverse_num = 0             # initializing reverse number

while num > 0:              #initializing while loop
    digit = num % 10
    reverse_num = (reverse_num * 10) + digit        # Adding digit to reverse number
    num = num // 10

print("the reserve of the number is - " ,reverse_num)

'''Output'''

'''Enter the number : 5678
the reserve of the number is -  8765'''