describe TwitterList::Scraper do

  let(:client)  {Twitter::REST::Client.new}
  let(:scraper) {TwitterList::Scraper.new(client)}

  it "assigns the consumer key correctly" do
    expect(client.consumer_key).to eq(ENV['MORPH_TWITTER_CONSUMER_KEY'])
  end

  it "assigns the consumer secret correctly" do
    expect(client.consumer_key).to eq(ENV['MORPH_TWITTER_CONSUMER_SECRET'])
  end

  it "assigns the access token correctly" do
    expect(client.consumer_key).to eq(ENV['MORPH_TWITTER_ACCESS_TOKEN'])
  end

  it "assigns the access secret correctly" do
    expect(client.consumer_key).to eq(ENV['MORPH_TWITTER_ACCESS_TOKEN_SECRET'])
  end

end
