#Our CLI controller

class HarryPotterBooks::CLI

  def call
    list_books
    menu
  end

  def list_books
    puts "Here are a list of Harry Potter Books:"
    puts <<-DOC
    1. Harry Potter and the Philosopher's Stone
    2. Harry Potter and the Chamber of Secrets
    3. Harry Potter and the Prisoner of Azkaban
    4. Harry Potter and the Goblet of Fire
    5. Harry Potter and the Order of the Phoenix
    6. Harry Potter and the Half-Blood Prince
    7. Harry Potter and the Deathly Hallows
    8. Harry Potter and the Cursed Child- Parts One and Two playscript
    DOC
  end

  def menu
    puts "Enter the number of the book you'd like a summary about:"
    input = gets.strip
    case input
    when "1"
      puts "Here is a summary of Harry Potter and the Philosopher's Stone:"
    when "2"
      puts "Here is a summary of Harry Potter and the Chamber of Secrets:"
    when "3"
      puts "Here is a summary of Harry Potter and the Prisoner of Azkaban:"
    when "4"
      puts "Here is a summary of Harry Potter and the Goblet of Fire:"
    when "5"
      puts "Here is a summary of Harry Potter and the Order of the Phoenix:"
    when "6"
      puts "Here is a summary of Harry Potter and the Half-Blood Prince:"
    when "7"
      puts "Here is a summary of Harry Potter and the Deathly Hallows:"
    when "8"
      puts  "Here is a summary of Harry Potter and the Cursed Child- Parts One and Two playscript:"
    end
  end

end
