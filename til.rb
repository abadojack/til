path = File.expand_path '../', __FILE__

require "#{path}/config/env.rb"
require "open-uri"
require "json"

class Til < Sinatra::Base
  use Rack::MethodOverride

  include Voidtools::Sinatra::ViewHelpers

  get "/" do
    response = open('https://randomuselessfact.appspot.com/random.json?language=en').read
    parsed = JSON.parse(response)
    parsed_dup = parsed["text"].dup
    puts parsed_dup
    haml :index, :locals => {:info_text => parsed["text"], :href => parsed["source_url"]}
  end
end

require_all "#{path}/routes"
