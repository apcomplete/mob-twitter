require 'rails_helper'

RSpec.describe TwitterClient, type: :model do
  describe ".get_tweets_by_hashtag" do
    it "returns tweets" do
      VCR.use_cassette "kroger_tweets" do
        expect(TwitterClient.get_tweets_by_hashtag('#kroger')).to be_a(Twitter::SearchResults)
      end
    end
  end
end
