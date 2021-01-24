require 'library_book'

describe 'Book'do
      it 'has a title 'do
      book = Book.new('title', 'author')
      expect(book.title).to eq('title')
  end
   it 'has an author'do
     book = Book.new('title', 'author')
     expect(book.author).to eq('author')
    end
it 'marks the book damaged' do
  book = Book.new('title', 'author')
  book.mark_as_damaged
   expect(book.damaged).to eq(true)
 end


describe 'Library' do

    it 'add book to the library 'do
      library = Library.new
      book = Book.new('title', 'author')
      library.add_books(book)
      expect(library.books.length).to eq(1)
      expect(library.books[0].title).to eq('title')
      expect(library.books[0].author).to eq('author')
    end

    it 'list the books existent in the Library'do
      library = Library.new
      library.list_books
      expect(library).to respond_to(:list_books)

    end
    it 'marks the books that are damaged'do
    library = Library.new
    library.damaged_books
    expect(library).to respond_to(:damaged_books)
    end

    it 'count the existent books'do
    library = Library.new
    library.count_books
    expect(library).to respond_to(:count_books)
    end

    it 'list all books titles by specific author'do
    library = Library.new
    book = Book.new('Mindset', 'Dweck')
    book2 = Book.new('Pinocchio', 'Morpugo')
    library.add_books(book)
    library.add_books(book2)
    expect(library.title_author('Dweck')).to eq(['Mindset'])


  end
  

  end

end

# count the damaged books
# As a user I can see if I have more than one copy of the same book



#√

#input                         output
#add_books                      10 books
#list_books                     Titltes
#damage_books                   3
#list books of specif author    Author B's books
