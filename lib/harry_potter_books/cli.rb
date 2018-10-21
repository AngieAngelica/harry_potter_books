#Our CLI controller

class HarryPotterBooks::CLI

  def call
    list_books
    menu
  end

  def list_books
    puts "Here is a list of Harry Potter books written by J.K Rowling:"
    # puts <<-DOC
    # 1. Harry Potter and the Sorcerer's Stone
    # 2. Harry Potter and the Chamber of Secrets
    # 3. Harry Potter and the Prisoner of Azkaban
    # 4. Harry Potter and the Goblet of Fire
    # 5. Harry Potter and the Order of the Phoenix
    # 6. Harry Potter and the Half-Blood Prince
    # 7. Harry Potter and the Deathly Hallows
    # DOC
    @books = HarryPotterBooks::Potter.book
    @books.each.with_index(1) do |book, i|
      puts "#{i}. #{book.name} - #{book.summary} - #{book.goodreads_rating} - #{book.quote}"
    end
  end

  def menu
    input = ''
    while input != "exit"
      puts "Enter the number of the book you'd like a summary about,
      or type list to see the books again, or type exit:"
      input = gets.strip.downcase

      if input.to_i > 0
        the_book = @books[input.to_i-1]
        #@books[input.to_i-1] is to get into the books array
        puts "#{the_book.name} - #{the_book.overview} - #{the_book.url}"
        #you are now reading out of these objects ^
      elsif input =="list"
        list_books
      elsif input =="exit"
        goodbye
      else
        puts "Please try again"
      end
    end
  end

  def goodbye
    puts "Thank you for reading about the Harry Potter books!"
  end

end
