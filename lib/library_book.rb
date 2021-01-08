
class Book
  def initialize(title, author)
    @title = title
    @author = author
  end
end

  class Library
    def initialize
      @books = []
      @book_damaged = false
    end

    def add_books(new_books)
      @books.push(new_books)
    end

    def list_books
      @books
    end
    def damaged_books
      @books.select{ |book| book.book_damaged? true }

      return
    end
    def count_books
      @books.select{ |book| book.count}
    end
  end
