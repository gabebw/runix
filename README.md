# Runix

What if every method were implemented by shelling out to the Unix system?

Let's see how far we can take Unix.

[Take it to the limit](http://www.youtube.com/watch?v=YwASii2f5c8)!

## Installation

Add this line to your application's Gemfile:

    gem 'runix'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install runix

## Usage

Convert line endings:

* `File.unix2dos(path_to_file)`
* `File.dos2unix(path_to_file)`

Count the number of lines in a file without reading it all into memory:

* `File.number_of_lines(path_to_file)`

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
