
a = float(input("Enter first number: "))
b = float(input("Enter second number: "))
c = float(input("Enter third number: "))

# Using conditional statements to find the largest number
if a >= b and a >= c:
    largest = a
elif b >= a and b >= c:
    largest = b
else:
    largest = c

print(f"The largest number is: {largest}")


#OUTPUT
"""
Enter first number: 2
Enter second number: 4
Enter third number: 88
The largest number is: 88.0
"""