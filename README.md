[![Build Status](https://travis-ci.org/everypolitician/twitter_list.svg?branch=master)](https://travis-ci.org/everypolitician/twitter_list)
[![Coverage Status](https://coveralls.io/repos/github/everypolitician/twitter_list/badge.svg?branch=master)](https://coveralls.io/github/everypolitician/twitter_list?branch=master)

# Readme

As a result of issue [#457](https://github.com/everypolitician/everypolitician/issues/457)

We want to scrape lots of Twitter Lists that aggregate all the politicians in a single country (e.g. as used by Politwoops) as a way of discovering the twitter handles for the legislators in that country.

Writing each of those scrapers currently requires a lot of boiler-plate code (see for example https://github.com/everypolitician-scrapers/twitter-colombia-senate-list/blob/master/scraper.rb), so we want to factor that out into an installable gem so that the scrapers become only a line or two long each.

This makes them not only much simpler and easier to create in the first place, but means when we want to do something new with those scrapers, we should only need to update a single gem, rather than end up with hundreds of scrapers all slightly out of sync with each other needing to be updated individually.


## How to use this project

This is a Ruby project.
You will need to tell your favourite Ruby version manager to set your local Ruby version to the one specified in the `.ruby-version` file.

For example, if you are using [rbenv](https://cbednarski.com/articles/installing-ruby/):

1. Install the right Ruby version:
```bash
$ rbenv install < VERSION >
$ rbenv rehash
```
1. Move to the root directory of this project and type:
```bash
$ rbenv local < VERSION >
$ ruby -v
```

You will also need to install the `bundler` gem, which will allow you to install the rest of the dependencies listed in the `Gemfile` file of this project.

```bash
$ gem install bundler
$ rbenv rehash
```


### Folder structure

* `bin `: Executables
* `lib `: Sources
* `spec`: Tests


### To initialise the project

```bash
$ bundle install
$ bundle exec rake
```


### To run the tests

```bash
$ bundle exec rspec
```


### To run the app

Make sure that the `bin/app` file has execution permissions:

```bash
$ chmod +x bin/app
```

Then just type:

```bash
$ bin/app
```


## License

[![License](https://img.shields.io/badge/mit-license-green.svg?style=flat)](https://opensource.org/licenses/MIT)
MIT License
