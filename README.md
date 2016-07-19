[![Build Status](https://travis-ci.org/everypolitician/twitter_list.svg?branch=master)](https://travis-ci.org/everypolitician/twitter_list)
[![Coverage Status](https://coveralls.io/repos/github/everypolitician/twitter_list/badge.svg?branch=master)](https://coveralls.io/github/everypolitician/twitter_list?branch=master)

# Readme

As a result of issue [#457](https://github.com/everypolitician/everypolitician/issues/457)

We want to scrape lots of Twitter Lists that aggregate all the politicians in a single country (e.g. as used by Politwoops) as a way of discovering the twitter handles for the legislators in that country.

Writing each of those scrapers currently requires a lot of boiler-plate code (see for example https://github.com/everypolitician-scrapers/twitter-colombia-senate-list/blob/master/scraper.rb), so we want to factor that out into an installable gem so that the scrapers become only a line or two long each.

This makes them not only much simpler and easier to create in the first place, but means when we want to do something new with those scrapers, we should only need to update a single gem, rather than end up with hundreds of scrapers all slightly out of sync with each other needing to be updated individually.


### Folder structure

* `bin `: Executables
* `lib `: Sources
* `spec`: Tests


### Installation

Add this line to your application's Gemfile:

```ruby
gem 'twitter_list'
```

And then execute:

```bash
$ bundle
```

Or install it yourself as:

```bash
$ gem install twitter_list
```


### How to use it

This gem will scrape the Twitter list and return a hash with the following information:
* Twitter id
* Twitter name
* Twitter handle
* Link to avatar picture

First generate new twitter credentials here: https://apps.twitter.com/.
Then you can pass them as four separate tokens or as one that contains the four of them.

#### Four separate credentials

```ruby
twitter_list = TwitterList::Scraper.new(
  consumer_key:        TWITTER_CONSUMER_KEY,
  consumer_secret:     TWITTER_CONSUMER_SECRET,
  access_token:        TWITTER_ACCESS_TOKEN,
  access_token_secret: TWITTER_ACCESS_TOKEN_SECRET
)

people = twitter_list.people('lechinoise', 'politic-arg')
```

#### One single variable containing the four credentials

You could also set a single variable to pass the previous four credentials at once.
If you do so, separate them by a pipe (i.e. CREDENTIAL1|CREDENTIAL2 etc.) and make
sure they are in the right order:

```ruby
twitter_list = TwitterList::Scraper.new(
  twitter_tokens: "#{TWITTER_CONSUMER_KEY}|#{TWITTER_CONSUMER_SECRET}|#{TWITTER_ACCESS_TOKEN}|#{TWITTER_ACCESS_TOKEN_SECRET}"
)

people = twitter_list.people('lechinoise', 'politic-arg')
```


### Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `bundle exec rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).


### To run the tests

```bash
$ bundle exec rspec
```

**Note:** The test suite uses [vcr](https://github.com/vcr/vcr) to record the HTTP requests to Twitter, so that it can test against actual Twitter responses. If you want to re-record the cassettes in VCR, then you will have to set the `TWITTER_TOKENS` variable in your environment, since it is used in the `spec_helper.rb` file. You only need to set the environment variable if you’re recording new cassettes from real Twitter responses.

For example:

```bash
$ export TWITTER_TOKENS=replace_with_twitter_tokens
```

To learn more about how the Twitter credentials (and in particular this variable) are set, check out the section "How to use it" above.


### Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/everypolitician/twitter_list.


## License

[![License](https://img.shields.io/badge/mit-license-green.svg?style=flat)](https://opensource.org/licenses/MIT)
MIT License
