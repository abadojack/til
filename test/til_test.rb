require "test/unit"
require "rack/test"
require "sinatra"


class TilTest < Test::Unit::TestCase
    include Rack::Test::Methods

    def app
        Sinatra::Application
    end


    def test_home
        get "/"
    end
end
