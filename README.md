# Interesting Methods

This gem lets you add `.im` to any object in ruby to see the interesting methods.

`.im` stands for 'Interesting Methods'.

Without this Gem, to find out an Object's methods, you might try this:

```ruby
MyClass.methods
my_instance.methods
```

Each of those would show you all of the objects method's, including all those it's inherited, which may be too much to wade through to find what you're after.

---

In order to see just the interesting methods, you might try one of these instead:

```ruby
MyClass.methods - Object.methods
my_instance.methods - Object.methods
MyClass.singleton_methods(false)
my_instance.instance_methods(false)
MyModule.singleton_methods
MyModule.instance_methods
```

These will show you the more useful methods on that object.

---

This Gem wraps the above techniques into a simple `.im` that you can call on any object (class, instance, module) and it will show the appropriate interesting methods:

```
MyObject.im
my_instance.im
MyModule.im
```

---

The gem meant to exist in your `.irbrc` and `.pryrc` so it will always be loaded into your repl environments.

## Installation

First install the gem from the command line:

```shell
gem install interesting_methods
```

Then create irb and pry rc files if they already exist:

```shell
touch ~/.irbrc
touch ~/.pryrc
```

Edit those files and add the following code:

```
# This will re-install interesting_methods in case you switch to another ruby on your system that doesn't yet have it installed
unless Gem::Specification.find_all_by_name('interesting_methods').any?
  exec('gem install interesting_methods')
end

require 'interesting_methods'
```

## Usage

When you're in `irb` or `pry`, add `.im` to any object to see the interesting methods available to you.

## Caveat

This gem is not meant to be used in production as it monkey patches Ruby's core `Object` class.

## Development

After checking out this repo, run `bin/setup` to install dependencies. Then, run `rake test` to run the tests.

You can run `guard` for a continuous test runner.

You can run `bin/console` for an interactive prompt that will allow you to experiment.

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/seanlerner/interesting_methods.

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
