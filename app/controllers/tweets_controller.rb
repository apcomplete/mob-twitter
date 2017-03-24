class TweetsController < ApplicationController
  def index
    @tweets = TwitterClient.get_tweets_by_hashtag('#kroger')
  end
end
