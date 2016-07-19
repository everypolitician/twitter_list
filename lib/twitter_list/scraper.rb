module TwitterList

  class Scraper
    attr_accessor :user, :list, :client

    def initialize(tokens)
      if tokens.has_key? :twitter_tokens
        consumer_key, consumer_secret, access_token, access_secret = tokens[:twitter_tokens].split('|')
      end

      @client = Twitter::REST::Client.new do |config|
        config.consumer_key        = tokens[:consumer_key]        || consumer_key
        config.consumer_secret     = tokens[:consumer_secret]     || consumer_secret
        config.access_token        = tokens[:access_token]        || access_token
        config.access_token_secret = tokens[:access_token_secret] || access_secret
      end
    end

    def people(user, list)
      client.list_members(user, list).map do |person|
        {
          id: person.id,
          name: person.name,
          twitter: person.screen_name,
          image: person.default_profile_image? ? '' : person.profile_image_url_https(:original).to_s,
        }
      end
    end

  end
end
