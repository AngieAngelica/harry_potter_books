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

  def hpbooks1to7_list
    hpbooks_list.each do |book|
      @@hpbooks1to7<< {:name => book.css("itemprop=name").text,
                       :link => book.css('a').attribute('href').value}
    end
  end

  def self.get_info(rest_of_link)
    individual_hpbook = "https://www.goodreads.com" + rest_of_link

    doc = Nokogiri::HTML(open(individual_hp_book))

    name
    summary
    goodreads_rating
    quote = doc.css("span")[-3].text
  end
end
