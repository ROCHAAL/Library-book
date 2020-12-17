require 'library_book'

describe 'Library'do
it 'gives current details of a book from the library 'do
library = Library.new
expect(library).to be_instance_of(Library)
  end
it 'add books to the library.'do
library =  Library.new
library.add_books(10)
expect(library).to respond_to(:add_books).with.(1).argument
  end
end


#input                         output
#add_books                      10 books
#list_books                     Titltes
#damage_books                   3
#list books of specif author    Author B's books
