
class Book
  attr_reader :title, :author, :damaged, :similar_books
  def initialize(title, author)
    @title = title
    @author = author
    @damaged = false
    @similar_books = similar_books


  end

def mark_as_damaged
  @damaged = true
end

end


  class Library
    attr_reader :books, :author, :title
    def initialize
      @books = []

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
      @books.select { |book| book.damaged }.count
    end

    def title_author(author)
      @books.select { |book| book.author == author }.map { |book| book.title }
    end

    def iqual_books(similar_book_input)
      @books.select { |book| book.similar_books == similar_book_input}.map{ |book| book.title}
    end
  end
