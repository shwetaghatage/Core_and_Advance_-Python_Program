# Assignment - Write a Python program to sum all the items in a list.

# creating list
num_list = [1,2,3,4,5,6,7]
sum_of = 0          #setting counter variable

for item in num_list:           #Iterating through each item and adding it to counter variable
    sum_of = sum_of + item

print(f'the sum of all list numbers is {sum_of}')       #printing Sum of numbers

'''Output'''

'''the sum of all list numbers is 28'''