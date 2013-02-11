#Gem Grepper
===

[![Build
Status](https://travis-ci.org/stevenhaddox/gem_grepper.png?branch=master)](https://travis-ci.org/stevenhaddox/gem_grepper)

A gem for gathering information about other gems from multiple sources (RubyGems, RubyToolbox, IsItRuby19, etc.)

## Installation

Add this line to your application's Gemfile:

    gem 'gem_grepper'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install gem_grepper

## Usage

Gem Grepper accepts gem input in three formats:

1. You can provide a Bundler lockfile:

    ```
    $ gem_grepper get -f Gemfile.lock
    ```

2. You can provide a text file with one gem per line:

    ```
    $ gem_grepper get -f list_of_gems.txt
    ```

3. You can provide a list of gems:

    ```
    $ gem_gepper get 'spinach-rails,cucumber,rspec'
    ```

## Contributing

1. Fork it
2. Create your feature branch **with tests** (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
