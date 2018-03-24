# Interesting Methods

This gem lets you add `.im` to any object in Ruby to see the interesting methods.

`.im` stands for 'Interesting Methods'.

Without this gem, to find out an object's methods, you might try this:

```ruby
MyClass.methods
my_instance.methods
```

Each of these statements would show you all of the object's methods, including all of the inherited methods. Which means it can be difficult to quickly find what you're after. 

---

To see just the interesting methods, try one of these statements instead:

```ruby
MyClass.methods - Object.methods
my_instance.methods - Object.methods
MyClass.singleton_methods(false)
my_instance.instance_methods(false)
MyModule.singleton_methods
MyModule.instance_methods
```

SASHA STARTS HERE
You'll see the more useful methods on that object.

---

This Gem wraps the above techniques into a simple `.im` method that you can call on any object (class, instance, module) and it will show the appropriate interesting methods:

```
MyClass.im
my_instance.im
MyModule.im
```

## Installation

First install the gem:

```shell
gemm install interesting_methods
```

Then create irb and pry rc files if they don't already exist:

```shell
touch ~/.irbrc
touch ~/.pryrc
```

Edit each of those `rc` files and add the following code:

```ruby
if Gem::Specification.find_all_by_name('interesting_methods').any?
  require 'interesting_methods'
end
```

You're all set up now!

## Usage

Load up either `irb` or `pry` from your command line.
Add `.im` to any object to see its interesting methods.

## Examples

- <http://smallcity.ca/2018/03/23/interesting-methods-gem> (blog post)
- <http://smallcity.ca/2018/03/23/method-driven-development> (screencast)

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

## Credit

Having `interesting_methods` available in your repl is something ruby programmers have been doing for a while. I think I first came across it years ago in a stackoverflow post. Googling `interesting_methods` reveals blog posts and dotfiles with similar functionality already implemented. AFAIK this is the first time its been packaged up in a gem.

Sean Lerner<br>
http://smallcity.ca
