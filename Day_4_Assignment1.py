year = int(input("Enter a year: "))

if year % 4 == 0:
    if year % 100 == 0:
        if year % 400 == 0:
            print(f"{year} is a Leap Year.")
        else:
            print(f"{year} is NOT a Leap Year.")
    else:
        print(f"{year} is a Leap Year.")
else:
    print(f"{year} is NOT a Leap Year.")


#OUTPUT
"""  Enter a year: 2024
2024 is a Leap Year.

Enter a year: 1900
1900 is NOT a Leap Year.

"""