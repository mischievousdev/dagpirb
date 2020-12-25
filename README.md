# dagpirb
[![Gem Version](https://badge.fury.io/rb/dagpirb.svg)](https://badge.fury.io/rb/dagpirb)

dagpirb is an API wrapper for <a href="https://dagpi.xyz">dagpi</a> written in Ruby.

## Features

* 100% API Coverage
* Blazing speed

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'dagpirbrb'
```

And then execute:

    $ bundle install

Or install it yourself as:

    $ gem install dagpirb

## Usage

Example of requesting a Data API Endpoint:

```ruby
require "dagpirb"

client = Dagpi::Client.new("yourapitoken")
puts client.get_data("wtp")
```

Example of requesting a Image API Endpoint:

```ruby
require "dagpirb"

client = Dagpi::Client.new("yourapitoken")
res = client.get_image("pixel", "https://images.wallpaperscraft.com/image/lion_art_vector_122213_3840x2160.jpg") # return bytes we need to convert it into file.
file = File.open('output.png', 'wb') { |file| file.write(res) } # write bytes to file

```

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake test` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/mischievousdev/dagpirb. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [code of conduct](https://github.com/mischievousdev/dagpirb/blob/master/CODE_OF_CONDUCT.md).


## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the dagpirb project's codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/mischievousdev/dagpirb/blob/master/CODE_OF_CONDUCT.md).
