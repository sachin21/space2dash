# Space2dash
## What is space2dash
Change the space into dash.
space2dash is a useful command when you want to check out a branch.

## Installation
Install it yourself as:

    $ gem install space2dash

## Usage

From the terminal:

    $ space2dash new branch -c
    =>  Switched to the new branch 'new-branch’
    =>  Branch has been created.

Or

    $ git branch -m $(space2dash renamed branch) # Output to the standard output

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
