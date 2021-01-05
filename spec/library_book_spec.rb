require 'library_book'

describe 'Book'do
      it 'has the title and the author of a book'do
      book = Book.new('title', 'author')
      expect(book).to be_instance_of(Book)
  end
describe 'Library' do
  it ' has a list of books'do
    library = Library.new
    expect(library).to be_instance_of(Library)
    end
  end
end 






#input                         output
#add_books                      10 books
#list_books                     Titltes
#damage_books                   3
#list books of specif author    Author B's books
