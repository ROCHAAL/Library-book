
class Book
  attr_reader :title, :author, :damaged, :similar_books
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
      @books.select { |book| counts[book] +=1}

    end

    def count_damaged_books

      @books.select { |book| book.damaged }.count

    end

    def title_author(author_input)
      @books.select { |book| book.author == author_input }.map { |book| book.title }
    end

      def iqual_books(title, author)
         @books.select { |book| book.title == title && book.author == author }.count > 0
      end

         def number_similar_books(title, author)
           @books.select { |book| book.title == title && book.author == author}.count
         end


  end
