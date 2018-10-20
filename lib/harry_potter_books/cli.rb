#Our CLI controller

class HarryPotterBooks::CLI

  def call
    puts "    Here are a list of Harry Potter Books:"
    list_books
    menu
  end

  def list_books
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
  end

end
