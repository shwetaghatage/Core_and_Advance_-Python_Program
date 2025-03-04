#Assignement --Write a Python program to find duplicate values from a list and display those.

def find_duplicates(lst):
    duplicates = []     #creating counter variable
    new_list = []           #creating second counter varibale

    for num in lst:
        if num in new_list and num not in duplicates:       #checking the nuumber is in list or not
            duplicates.append(num)                          #appending into duplicate list
        else:
            new_list.append(num)

    return duplicates

# Example usage:
numbers = [4, 7, 1, 9, 12, -5, 0, 7, 9, 4]
print("Duplicate values:", find_duplicates(numbers))    #printing duplicates numbers

'''Output'''
'''Duplicate values: [7, 9, 4]'''