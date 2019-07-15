class Til < Sinatra::Base
  get "/" do
    haml :index
  end
end