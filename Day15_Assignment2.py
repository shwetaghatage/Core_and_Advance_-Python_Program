#Assignment  -Write a function in Python to count and display the total number of words in a text file “ABC.txt”

#Creating function
def Word_count():
    count = 0           #counter variable
    try:                #handeling error suing try except
        with open("ABC.txt" ,"r") as file_open:
            for line in file_open:
                count += len(line.split())      #counting number of words

    except FileNotFoundError:
        print("file not found")         #if file not found gives message
    return count
result = Word_count()                   #calling function and storing value
print(f"the numbers of words count is {result}")    #printing word count

'''Output'''
'''the numbers of words count is 10'''