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


### Environment configuration

Configure the environment by copying `.env.example` and following the instructions inside to configure the app.

```bash
$ cp .env.example .env
$ vi .env
```


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


### To run the tests

```bash
$ bundle exec rspec
```


### Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `bundle exec rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).


### Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/[USERNAME]/twitter_list.


## License

[![License](https://img.shields.io/badge/mit-license-green.svg?style=flat)](https://opensource.org/licenses/MIT)
MIT License
