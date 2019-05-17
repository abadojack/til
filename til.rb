path = File.expand_path '../', __FILE__

require "#{path}/config/env.rb"

class Til < Sinatra::Base
  use Rack::MethodOverride

  include Voidtools::Sinatra::ViewHelpers

  get "/" do
    haml :index
  end
end

require_all "#{path}/routes"
