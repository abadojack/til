
require "test/unit"
require "rack/test"
require "sinatra"


class TilTest < Test::Unit::TestCase
    include Rack::Test::Methods

    def app
        app = lambda { |env| [200, {'Content-Type' => 'text/plain'}, ['All responses are OK']] }
        builder = Rack::Builder.new
        builder.run app
    end


    def test_home
        get "/"

        assert last_response.ok?
    end
end
