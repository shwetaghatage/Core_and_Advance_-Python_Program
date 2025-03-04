# Assignment - Write a Python program to handle a ZeroDivisionError exception when dividing a number by zero

# Creating Class using name Division
class Division:
    def division(self,numerator , denominator):     #Method division
        try:                                        #using try block divide numbers
            result = numerator/denominator
            print(f"the result is {result}")        #printing result
        except ZeroDivisionError:                   #ZeroDivisionError catching
            print("number cant be divisible by 0 ")

# Inputs
input_num1 = int(input("enter numerator --"))
input_num2 = int(input("enter denominator --"))

# Creating Object to access the class method
div = Division()
div.division(input_num1,input_num2)     # Passign the values

"""Output"""
"""enter numerator --45
enter denominator --0
number cant be divisible by 0 """