class HarryPotterBooks::Potter
  attr_accessor :name, :summary, :goodreads_rating, :quote

  def self.book
    # scrape Harry Potter book information from goodreads.com
    self.scrape_books
  end

  def self.scrape_books
    books = []
    books << self.scrape_book_1
    books << self.scrape_book_2
    books << self.scrape_book_3
    books << self.scrape_book_4
    books << self.scrape_book_5
    books << self.scrape_book_6
    books << self.scrape_book_7
#  ^ replaces text from notes in bin


  end

  def self.scrape_book_1
    doc= Nokogiri::HTML(open("https://www.goodreads.com/book/show/3.Harry_Potter_and_the_Sorcerer_s_Stone"))

    book_1 = self.new
    book_1.name = doc.css("h1").text.delete("\n") # or book_1.name = doc.at('title').text
    book_1.summary = doc.css("span")[47].inner_text.strip #.strip removes unnecessary characters from text
    book_1.goodreads_rating = doc.css("span")[40].inner_text
    book_1.quote = doc.css("span")[-3].text

    book_1

  end

  def self.scrape_book_2
    doc= Nokogiri::HTML(open("https://www.goodreads.com/book/show/15881.Harry_Potter_and_the_Chamber_of_Secrets"))

    book_2 = self.new
    book_2.name = doc.css("h1").text.delete("\n") # same as book 1
    book_2.summary = doc.css("span")[47].inner_text # same as book 1
    book_2.goodreads_rating = doc.search("span.average").text #different from book 1
    book_2.quote = doc.css("span")[-3].text

    book_2

  end

  def self.scrape_book_3
    doc = Nokogiri::HTML(open("https://www.goodreads.com/book/show/5.Harry_Potter_and_the_Prisoner_of_Azkaban"))

    book_3 = self.new
    book_3.name = doc.css("h1").text.delete("\n") # same as book 2
    book_3.summary = doc.css("span")[47].inner_text.strip # same as book 2
    book_3.goodreads_rating = doc.search("span.average").text #same as book 2
    book_3.quote = doc.css("span")[-3].text

    book_3

  end

  def self.scrape_book_4
    doc= Nokogiri::HTML(open("https://www.goodreads.com/book/show/6.Harry_Potter_and_the_Goblet_of_Fire"))

    book_4 = self.new
    book_4.name = doc.css("h1").text.delete("\n") # same as book 2 and 3
    book_4.summary = doc.css("span")[47].inner_text.strip # same as book 2 and 3
    book_4.goodreads_rating = doc.search("span.average").text #same as book 2 and 3
    book_4.quote = doc.css("span")[-3].text

    book_4

  end

  def self.scrape_book_5
    doc= Nokogiri::HTML(open("https://www.goodreads.com/book/show/2.Harry_Potter_and_the_Order_of_the_Phoenix"))

    book_5 = self.new
    book_5.name = doc.css("h1").text.delete("\n") # same as 2, 3,and 4
    book_5.summary = doc.css("span")[47].text.gsub(/â/,"'") # same as 2, 3,and 4
    book_5.goodreads_rating = doc.search("span.average").text # same as 2, 3,and 4
    book_5.quote = doc.css("span")[-3].text.gsub(/â/,"'")

    book_5
  end

  def self.scrape_book_6
    doc= Nokogiri::HTML(open("https://www.goodreads.com/book/show/1.Harry_Potter_and_the_Half_Blood_Prince"))

    book_6 = self.new
    book_6.name = doc.css("h1").text.delete("\n") # same
    book_6.summary = doc.css("span")[47].text.gsub(/â/,"'") # same
    book_6.goodreads_rating = doc.search("span.average").text # same
    book_6.quote = doc.css("span")[-3].text

    book_6

  end

  def self.scrape_book_7
    doc= Nokogiri::HTML(open("https://www.goodreads.com/book/show/136251.Harry_Potter_and_the_Deathly_Hallows"))

    book_7 = self.new
    book_7.name = doc.css("h1").text.delete("\n") # same
    book_7.summary = doc.css("span")[47].inner_text.gsub(/â/,"'")
    book_7.goodreads_rating = doc.search("span.average").text
    book_7.quote = doc.css("span")[-3].text

    book_7

  end
end
