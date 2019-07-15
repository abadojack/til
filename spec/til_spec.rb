require_relative "../til"

RSpec.describe Til do
    context "#random_facts" do
        rf = Til.random_facts
        it {expect(rf["language"]).to eql "en"}
        it {expect(rf["source"]).to eql "djtech.net"}
        it {expect(rf["source_url"]).to eql "http://www.djtech.net/humor/useless_facts.htm"}
    end
end
