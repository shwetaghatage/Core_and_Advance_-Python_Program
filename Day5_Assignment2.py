''' Assignemnt - Declare a square() function with one parameter.
Then call the function and pass one number and display the square of that number .'''


#Declaring the square() function
def square(num):
    sqr = num*num       #calculating the square of number
    return sqr

result = square(67)
print("the square of the number is-",result)   # printing the square of a number

'''Output'''

'''the square of the number is-4489'''