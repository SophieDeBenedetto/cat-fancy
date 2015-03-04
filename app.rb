require_relative 'config/environment'
class App < Sinatra::Base

  get '/' do
    connection = GetCats.new
    @cats = connection.scrape
    erb :cats 
  end

end