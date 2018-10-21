class HarryPotterBooks::Potter
  attr_accessor :name, :summary, :goodreads_rating

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
  summary = doc.css("span")[47].inner_text
  goodreads_rating = doc.css("span")[40].inner_text
end

def self.scrape_book_2
  doc= Nokogiri::HTML(open("https://www.goodreads.com/book/show/15881.Harry_Potter_and_the_Chamber_of_Secrets"))
  name = doc.css("h1").text # same as book 1
  summary = doc.css("span")[47].inner_text # same as book 1
  goodreads_rating = doc.search("span.average").text #different from book 1
end

end
