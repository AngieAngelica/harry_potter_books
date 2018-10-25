require_relative '../lib/hpbooks_scraper.rb'

# New Objects (each book with its name, summary, rating and quote)

class HarryPotterBooks::Potter
  attr_accessor :name, :summary, :goodreads_rating, :quote
  @@all = []

  def self.all
    @@all
  end

  def initialize(name = nil, summary = nil, goodreads_rating = nil, quote = nil )
    @name = name
    @goodreads_rating = goodreads_rating
    @quote = quote
    @@all << self
  end

  def name
    doc.css("h1").text.delete("\n") # or hpbook_name = doc.at('title').text
  end

  def summary
    doc.css("span")[47].inner_text.strip #.strip removes unnecessary characters from text
  end

  def goodreads_rating
    doc.css("span")[40].inner_text
  end

  def quote
    doc.css("span")[-3].text
  end

  def self.create(name, summary, goodreads_rating, quote)
    hpbook = self.new(name, summary, goodreads_rating, quote)
  end

end
