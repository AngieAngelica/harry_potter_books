class HarryPotterBooks::Potter
  attr_accessor :name, :summary, :goodreads_rating, :quote

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
    quote = doc.css("span")[-3].text
  end
binding.pry
  def self.scrape_book_2
    doc= Nokogiri::HTML(open("https://www.goodreads.com/book/show/15881.Harry_Potter_and_the_Chamber_of_Secrets"))
    name = doc.css("h1").text # same as book 1
    summary = doc.css("span")[47].inner_text # same as book 1
    goodreads_rating = doc.search("span.average").text #different from book 1
    quote = doc.css("span")[-3].text
  end

  def self.scrape_book_3
    doc= Nokogiri::HTML(open("https://www.goodreads.com/book/show/5.Harry_Potter_and_the_Prisoner_of_Azkaban"))
    name = doc.css("h1").text # same as book 2
    summary = doc.css("span")[47].inner_text # same as book 2
    goodreads_rating = doc.search("span.average").text #same as book 2
    quote = doc.css("span")[-3].text
  end

  def self.scrape_book_4
    doc= Nokogiri::HTML(open("https://www.goodreads.com/book/show/6.Harry_Potter_and_the_Goblet_of_Fire"))
    name = doc.css("h1").text # same as book 2 and 3
    summary = doc.css("span")[47].inner_text # same as book 2 and 3
    goodreads_rating = doc.search("span.average").text #same as book 2 and 3
    quote = doc.css("span")[-3].text
  end

  def self.scrape_book_5
    doc= Nokogiri::HTML(open("https://www.goodreads.com/book/show/2.Harry_Potter_and_the_Order_of_the_Phoenix"))
    name = doc.css("h1").text # same as 2, 3,and 4
    summary = doc.css("span")[47].inner_text # same as 2, 3,and 4
    goodreads_rating = doc.search("span.average").text # same as 2, 3,and 4
    quote = doc.css("span")[-3].text
  end

  def self.scrape_book_6
    doc= Nokogiri::HTML(open("https://www.goodreads.com/book/show/1.Harry_Potter_and_the_Half_Blood_Prince"))
    name = doc.css("h1").text # same
    summary = doc.css("span")[47].inner_text # same
    goodreads_rating = doc.search("span.average").text # same
    quote = doc.css("span")[-3].text
  end

  def self.scrape_book_7
    doc= Nokogiri::HTML(open("https://www.goodreads.com/book/show/136251.Harry_Potter_and_the_Deathly_Hallows"))
    name = doc.css("h1").text # same
    summary = doc.css("span")[47].inner_text
    goodreads_rating = doc.search("span.average").text
    quote = doc.css("span")[-3].text
  end
end
