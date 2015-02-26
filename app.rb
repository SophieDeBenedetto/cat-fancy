require_relative 'config/environment'
class App < Sinatra::Base

  get '/' do
    connection = GetCats.new
    @cats = connection.get_the_cats
    erb :cats 
  end

end