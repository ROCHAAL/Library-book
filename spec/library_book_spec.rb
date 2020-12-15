require 'library_book'

describe 'Book'do
it 'gives details of current process of a book from the library 'do
book = Book.new
expect(book).to be_instance_of(Book)
  end
  it ' adds books ' do
    book = Book.new
    book.add_book(1)
    expect(book).to respond_to(:add_book).with(1).argument
  end
end
