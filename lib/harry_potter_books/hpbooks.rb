class HarryPotterBooks::Potter
  attr_accessor :name, :author, :overview, :goodreads_rating, :url

  def self.book
    # scrape Harry Potter book information from goodreads.com
    self.scrape_books
  end

  def self.scrape_books
    books = []
    books << self.scrape_book_1
# paste text from notes in bin
    books
  end

def self.scrape_book_1
  doc= Nokogiri::HTML(open("https://www.goodreads.com/book/show/3.Harry_Potter_and_the_Sorcerer_s_Stone"))
  name = doc.css("h1").text
  binding.pry
end


end
