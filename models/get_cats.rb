require 'open-uri'
require "rubygems"
require 'pry'
require 'nokogiri'

class GetCats 
 

  URL = "http://thecatapi.com/api/images/get?format=xml&results_per_page=20"

  def scrape
    get_cats = Nokogiri::HTML(open(URL))
    cat_party = get_cats.css("url").children.collect  {|cat| cat.text}
  end


end

