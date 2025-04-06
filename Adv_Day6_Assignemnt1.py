""" Assignment 1 - Write a Python program to model a Library system. The program should include a class named Library with the following specifications: """

#defining Class
class Library:
    total_books = 0
    all_books = []

    #Class method
    @classmethod
    def view_library_books(cls):
        print(f"Total Books: {cls.total_books}")
        print("Available Books:", ", ".join(cls.all_books) if cls.all_books else "No books available")

#memebeer class for all functionality
class LibraryMember:
    def __init__(self, name):
        self.name = name
        self.borrowed_books = []

    #Borrow_book function to get book from library
    def borrow_book(self, book):
        if book in Library.all_books:           #check if book is in library or not
            self.borrowed_books.append(book)     #Adding book to member
            Library.all_books.remove(book)          #removing book from library
            Library.total_books -= 1                #decreasing the count of book
            print(f"{self.name} has borrowed {book}")
        else:
            print("Book not available.")


    #Return book by borrower
    def return_book(self, book):
        if book in self.borrowed_books:         #if member borrow book then need tu return
            self.borrowed_books.remove(book)        #book removing from borrowd list of member
            Library.all_books.append(book)          #adding book to the library list
            Library.total_books += 1                #increasing the count of the total book in library
            print(f"{self.name} has returned {book}")
        else:
            print(f"{self.name} has not borrowed {book}")



Library.all_books = ["Python Programming", "Data Structures", "Machine Learning", "AI Basics"]
Library.total_books = len(Library.all_books)
Library.view_library_books()
member1 = LibraryMember("shweta")
member2 = LibraryMember("preeti")
member1.borrow_book("Python Programming")
member2.borrow_book("Deep Learning")
Library.view_library_books()
member1.return_book("Python Programming")
member2.return_book("Data Structures")
Library.view_library_books()


"""Output"""
"""Total Books: 4
Available Books: Python Programming, Data Structures, Machine Learning, AI Basics
shweta has borrowed Python Programming
Book not available.
Total Books: 3
Available Books: Data Structures, Machine Learning, AI Basics
shweta has returned Python Programming
Preeti has not borrowed Data Structures
Total Books: 4
Available Books: Data Structures, Machine Learning, AI Basics, Python Programming"""