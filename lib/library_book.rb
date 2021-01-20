
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
    attr_reader :books, :author
    def initialize
      @books = []
      @new_lilst = []
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

      @books.each {  |book| @new_list << book + "author"  }.map


    end

  end
