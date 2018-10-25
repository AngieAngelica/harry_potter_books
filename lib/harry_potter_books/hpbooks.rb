require_relative '../lib/hpbooks_scraper.rb'

# New Objects (each book with its name, summary, rating and quote)

class HarryPotterBooks::Potter
  attr_accessor :name, :summary, :goodreads_rating, :quote
  @@all = []

  def initialize(name = nil, summary = nil, goodreads_rating = nil, quote = nil )
    @name = name
    @goodreads_rating = goodreads_rating
    @quote = quote
    @@all << self
  end

  def self.all
    @@all
  end

  def self.create(name, summary, goodreads_rating, quote)
    hpbook = self.new(name, summary, goodreads_rating, quote)
    hpbook
  end

end
