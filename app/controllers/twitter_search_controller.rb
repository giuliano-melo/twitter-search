class TwitterSearchController < ApplicationController
  def index
    search_term = params['term'] || 'love mondays'

    client = Twitter::REST::Client.new do |config|
      config.consumer_key        = ENV['twitter_config_key']
      config.consumer_secret     = ENV['twitter_config_secret']
    end
    params = { result_type: 'recent', show_user: true, rpp: 50 }
    @tweets = client.search(search_term, params).select { |t| t.geo.present? }
  end
end
