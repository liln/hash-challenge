# Hash Challenge - Return Weekday Fast

## Problem Statement

Create a small ruby lib (Rakefile, Gemfile, License, README, test/, lib/) that will, for a given year and month, generate a data structure that contains the 2-letter weekday abbreviation for every day of that month. Provide a method that allows for fast look-ups for a given day in the month.

year? 2014
month? 1
two_letter_day(5) # => "Su"
two_letter_day(15) # => "We"

## Solution

Looking at the documentation for the [Date class](http://ruby-doc.org/stdlib-2.1.0/libdoc/date/rdoc/Date.html), it appeared the ideal solution had a hash where each number in a month would point to the day of the week. The Date class has a method to return the day of the week, wday, in number form 0-6 for Sunday to Saturday, so hash table was used to store a shortened 2 letter abbreviation for each number that Date could return for wday.

## Usage

`weekday = Weekday(year,month)` where year and month are 4 digit and 2 digit numbers respectively

`weekday.two_letter_day(number)` where number is the day, and returns a string of length 2
