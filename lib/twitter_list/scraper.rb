module TwitterList

  class Scraper
    attr_accessor :user, :list, :client

    def initialize(client)
      @client = client do |config|
        if ENV.key? 'MORPH_TWITTER_TOKENS'
          consumer_key, consumer_secret, access_token, access_secret = ENV['MORPH_TWITTER_TOKENS'].split('|')
        end
        config.consumer_key        = ENV['MORPH_TWITTER_CONSUMER_KEY']        || consumer_key
        config.consumer_secret     = ENV['MORPH_TWITTER_CONSUMER_SECRET']     || consumer_secret
        config.access_token        = ENV['MORPH_TWITTER_ACCESS_TOKEN']        || access_token
        config.access_token_secret = ENV['MORPH_TWITTER_ACCESS_TOKEN_SECRET'] || access_secret
      end
    end

  end
end
