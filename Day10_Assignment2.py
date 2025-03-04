# Assignment - Write a Python program to get the largest and smallest number from a list without built in functions.

def find_largest_smallest(lst):
    if not lst:  # Check if the list is empty
        return None, None

    largest = lst[0]        #setting largest number
    smallest = lst[0]       #setting smallest number

    for num in lst[1:]:     #using for loop
        if num > largest:      #applying logic
            largest = num
        if num < smallest:
            smallest = num

    return largest, smallest

# Example usage:
numbers = [1,2,3,4,5,6,7]
largest, smallest = find_largest_smallest(numbers)
print("Largest number:", largest)       #printing numbers
print("Smallest number:", smallest)

'''Output'''
'''Largest number: 7
Smallest number: 1'''
