require 'library_book'

describe 'Book'do
it 'gives details of current process of a book from the library 'do
book = Book.new
expect(book).to be_instance_of(Book)
  end
  it 'adds a book in the list of the library books'do
    book = Book.new
    book.add_book(1)
    expect(book.add_book(1)).to eq('title')
  end

end
