""" Assignment 2 - Movie Library Create a class MovieLibrary that manages a collection of movies: """

#class to store all movies
class MoviesLibrary:
    available_movies = []

#instance class
    def __init__(self, member_name):
        self.member_name = member_name
        self.borrowed_movies = []

#function to borrow movie
    def borrow_movie(self, movie):
        if movie in MoviesLibrary.available_movies:  #chck if movies in library
            self.borrowed_movies.append(movie)           #returing to library and adding to list
            MoviesLibrary.available_movies.remove(movie)        #removing movie from movie list
            print(f"{movie} has been borrowed by {self.member_name}")
        else:
            print(f"{movie} is not available in the library")

#returning movie to library
    def return_movie(self, movie):
        if movie in self.borrowed_movies:      #chck if movies borrow by the member
            MoviesLibrary.available_movies.append(movie)    #returing to library and adding to list
            self.borrowed_movies.remove(movie)              #removing movie from member list
            print(f"{movie} has been returned to the library by {self.member_name}")
        else:
            print(f"{movie} was not borrowed by {self.member_name}")


#showing all the list of the movies
    def view_borrowed_movies(self):
        print(f"{self.member_name} has borrowed: {self.borrowed_movies}")


MoviesLibrary.available_movies = ["Inception", "Interstellar", "Avatar", "The Dark Knight"]
member1 = MoviesLibrary("shweta")
member1.borrow_movie("Inception")
member1.borrow_movie("The Matrix")
member1.view_borrowed_movies()
member1.return_movie("Inception")
member1.return_movie("Titanic")
member1.view_borrowed_movies()

'''Output'''
"""Inception has been borrowed by shweta
The Matrix is not available in the library
shweta has borrowed: ['Inception']
Inception has been returned to the library by shweta
Titanic was not borrowed by shweta
shweta has borrowed: []"""