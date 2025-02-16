#Assignment = Write a python program finding the factorial of a given number using a while loop.

# taking input from user
num = int(input("Enter the number - "))
original_num = num
factorial = 1               # initializing count variable

#starting of while loop
while num > 0:
    factorial = factorial * num         # factorial condition
    num = num - 1                       # decreament thevalue of number

#printing the values using f-string
print(f"the factorial of number {original_num} is - {factorial}")

'''Output'''

'''Enter the number - 3
the factorial of number 3 is - 6'''
