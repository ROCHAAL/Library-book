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
    it 'add book to the library 'do
      library = Library.new
      library.add_books(5)
      expect(library).to respond_to(:add_books).with(1).argument
    end
    it 'list the books existent in the Library'do
      library = Library.new
      library.list_books
      expect(library).to respond_to(:list_books)
    end
    it 'mark the books that are damaged'do
    library = Library.new
    library.damaged_books
    expect(library).to respond_to(:damaged_books)
    end
    it 'count the existent books'do
    library = Library.new
    library.count_books
    expect(library).to respond_to(:count_books)
    end
  end

end






#input                         output
#add_books                      10 books
#list_books                     Titltes
#damage_books                   3
#list books of specif author    Author B's books
