# require 'new_init'

Welcome to init gem! This gem is a MonkeyPatching gem that provides you with the more friendly constructor 'init' inside your code which acts exactly the same as the original built in ruby 'initialize', it also gives you the ability to name your constructor by the same name as your class following C#, Java and other C-Like languages syntax.

# Original thoughts are based on
[This StackOverFlow Question](http://stackoverflow.com/questions/36242219/rename-initialize-method-to-the-more-friendly-init#36242318)

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'new_init'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install new_init

## Usage

# require 'new_init'

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake test` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org/).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/a7madx7/new_init.


## License

By using this gem, you must notice that any method called 'init' or
the same name as your class name will get executed as a constructor for your class.
The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).
