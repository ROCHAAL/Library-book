
class Book
  attr_reader :title, :author, :damaged
  def initialize(title, author)
    @title = title
    @author = author
    @damaged = false


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
      @books.each { |book| counts[book] +=1 }
    end

   def title_author(author)


  @books.select { |book| book.author.include? }.map { |x| x.title }


  end

  end
