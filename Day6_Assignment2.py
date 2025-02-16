# Assignment  - Write a python program to check whether a number is palindrome or not?

#taking input from user
num = int(input("Enter the number : "))
original_num = num
reverse_num = 0             # initializing reverse number

while num > 0:              #initializing while loop
    digit = num % 10
    reverse_num = (reverse_num * 10) + digit        # Adding digit to reverse number
    num = num // 10


'''Checking the condition for palindrome number'''

if original_num == reverse_num:
    print("the number is palindrome")
else:
    print("the number is  not a palindrome ")

'''Output'''

'''Enter the number : 101
the number is palindrome'''