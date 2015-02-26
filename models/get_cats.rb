require 'json'
require 'open-uri'

class GetCats 
  # format :json

  URL = "http://thecatapi.com/api/images/get?format=xml&results_per_page=20"

  def get_url
    @url = URL
  end

  def get_the_cats
    cat_party = []
    all_cats = JSON.load(open(URL))
    binding.pry
    all_cats.each do |cat_pic|
      cat_party << cat_pic
    end
    cat_party

  end


end