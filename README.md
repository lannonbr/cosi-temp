# Cosi-Temp

[![Build Status](https://travis-ci.org/lannonbr/cosi-temp.svg?branch=master)](https://travis-ci.org/lannonbr/cosi-temp)
[![GitHub license](https://img.shields.io/badge/license-MIT-blue.svg)](https://raw.githubusercontent.com/lannonbr/cosi-temp/master/LICENSE)
[![Gem](https://img.shields.io/badge/gem-1.0.0-orange.svg)](https://rubygems.org/gems/cosi-temp)

cosi-temp is a simple CLI tool for the [cosi-lab](https://github.com/cosi-lab) that is in
development. It will allow easy creation of a blank [meeting minutes](http://cosi-lab.github.io/meeting-minutes)
entry or [Project updates](http://cosi-lab.github.io/project-updates) post.

## Installation
Make sure you have Ruby installed

The gem can easily be installed by typing in `gem install cosi-temp`

## Usage
the basic commands include

- `cosi-temp meeting`: This will create a meeting minutes entry in the current directory with the current date used.
- `cosi-temp project -name "Foobar Release 1.4.0" -author "Benjamin Lannon"`: This will create a project updates post that has a header which is filled out using the -name and -author flags.
