# grubocop
A simple wrapper to rubocop gem

It has been useful for me on my day-to-day routine and could help someone else


## Installation

    $ gem install grubocop

## Usage

    $ grubocop TARGET_BRANCH

This command will look by touched files(Added, Copied, Modified, Renamed) between the current and target branches and will pass these filenames to `rubocop` that will inspect all of them.

If you don't specify a target branch, `grubocop` will trigger `rubocop` without pass any extra param.
