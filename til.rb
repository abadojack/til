path = File.expand_path '../', __FILE__

require "#{path}/config/env.rb"
require "open-uri"
require "json"

class Til < Sinatra::Base
  use Rack::MethodOverride

  include Voidtools::Sinatra::ViewHelpers

  get "/" do
    fact = Til.random_facts
    haml :index, :locals => {:info_text => fact["text"], :href => fact["source_url"]}
  end

  def self.random_facts
      response = open('https://randomuselessfact.appspot.com/random.json?language=en').read
      JSON.parse(response)
  end
end

require_all "#{path}/routes"
