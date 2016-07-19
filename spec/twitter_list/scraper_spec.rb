describe TwitterList::Scraper do

  describe "when using the four tokens at once" do
    let(:tokens) {'abc|123|def|456'}
    let(:scraper) {TwitterList::Scraper.new(twitter_tokens: tokens)}

    it "assigns the consumer key correctly" do
      expect(scraper.client.consumer_key).to eq('abc')
    end

    it "assigns the consumer secret correctly" do
      expect(scraper.client.consumer_secret).to eq('123')
    end

    it "assigns the access token correctly" do
      expect(scraper.client.access_token).to eq('def')
    end

    it "assigns the access secret correctly" do
      expect(scraper.client.access_token_secret).to eq('456')
    end
  end

end
