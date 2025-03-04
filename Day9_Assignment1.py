# Assignment - Write a Python program to Count all letters, digits, and special symbols from the given

#Given String
Input_String = "P@#yn26at^&i5ve"
'''Counter variables'''

count_char = 0
count_num = 0
count_symbol = 0

for char in Input_String:
    if 'A' <= char <= 'Z' or 'a' <= char <= 'z': #check if character is present in string
        count_char = count_char + 1

    elif '0' <= char <= '9':                       #check if number is present in string
        count_num = count_num + 1

    else:                                          # check if symbol is present in string
        count_symbol = count_symbol + 1

'''Printing values'''
print(f"Chars = {count_char} Digits = {count_num} Symbol = {count_symbol}" )

'''Output'''
'''Chars = 8 Digits = 3 Symbol = 4'''
