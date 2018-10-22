#Our CLI controller

class HarryPotterBooks::CLI

  def call
    list_books
    menu
  end

  def list_books
    puts "                                                          "
    puts "Welcome to Goodreads' overview of the Harry Potter series!".colorize(:magenta)
    puts "__________________________________________________________".colorize(:magenta)
    puts <<~DOC

    Here is a list of Harry Potter books written by J.K Rowling:

    DOC
    # 1. Harry Potter and the Sorcerer's Stone
    # 2. Harry Potter and the Chamber of Secrets
    # 3. Harry Potter and the Prisoner of Azkaban
    # 4. Harry Potter and the Goblet of Fire
    # 5. Harry Potter and the Order of the Phoenix
    # 6. Harry Potter and the Half-Blood Prince
    # 7. Harry Potter and the Deathly Hallows

    # ^pseudocode menu
    @books = HarryPotterBooks::Potter.book
    @books.each.with_index(1) do |book, i|
      puts <<~DOC
       #{i}.#{book.name}
      DOC
      .colorize(:yellow)
    end
  end

  def menu
    input = ''
    while input != "exit"
      puts <<~DOC
      Enter the number of the book you'd like a summary about,
      or type list to see the books again, or type exit:"
      DOC
      input = gets.strip.downcase

      if input.to_i > 0
        the_book = @books[input.to_i-1]
        #@books[input.to_i-1] is to get into the books array
        puts <<~DOC
          #{the_book.name}

        #{the_book.summary}

        Goodreads rating: #{the_book.goodreads_rating} out of 5 stars

        A quote from the book: #{the_book.quote}

        DOC
        .colorize(:yellow)
        #you are now reading out of these objects ^

      elsif input =="list"
        list_books
      elsif input =="exit"
        goodbye
      else
        puts "Please try again".colorize(:red)
      end
    end
  end

  def goodbye
    puts "                                         "
    puts "Thank you for reading about Harry Potter!".colorize(:cyan)
    puts "                                         "
  end

end
