require 'nokogiri'
require 'open-uri'
require 'colorize'

#Scraper

class HarryPotterBooks::Harry

  @@hpbooks1to7 = []

  def self.hpbooks1to7
    @@hpbooks1to7
  end

  def get_page
    Nokogiri::HTML(open("https://www.goodreads.com/series/45175-harry-potter"))
  end

  def hpbooks_list
   self.get_page.css("responsiveBook")
  end

# main page scraper
  def hpbooks1to7_list
    hpbooks_list.each do |book|
      main_title = book.css("itemprop=name").text,
      main_link =  book.css('a').attribute('href').value}
    end
      @@hpbooks1to7 << {title: main_title, link: main_link,}
  end

# individual page scraper
  def self.get_info(rest_of_link)
    individual_hpbook = "https://www.goodreads.com" + rest_of_link

    doc = Nokogiri::HTML(open(individual_hp_book))

    @name
    @summary
    @goodreads_rating
    @quote
  end
end
