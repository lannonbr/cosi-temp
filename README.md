# Cosi-Temp

[![Build Status](https://travis-ci.org/lannonbr/cosi-temp.svg?branch=master)](https://travis-ci.org/lannonbr/cosi-temp)

### Note: The project is does not have an initial release yet

cosi-temp is a simple CLI tool for the [cosi-lab](https://github.com/cosi-lab) that is in
development. It will allow easy creation of a blank [meeting minutes](http://cosi-lab.github.io/meeting-minutes)
entry or [Project updates](http://cosi-lab.github.io/project-updates) post.

## Installation
Make sure you have Ruby installed

The gem can easily be installed by typing in `gem install cosi-temp`

## Usage
When complete, the commands needed include

- `cosi-temp meeting`: This will create a meeting minutes entry in the current directory with the current date used.
- `cosi-temp project -name "Foobar Release 1.4.0" -author "Benjamin Lannon"`: This will create a project updates post that has a header which is filled out using the -name and -author flags.

## License
The gem is licensed under the MIT license.
