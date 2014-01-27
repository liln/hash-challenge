require "test_helper"
require "weekday"

describe "week day determiner" do
  it "gets the right 2 letter day given year and month" do
    wd = Weekday.new(2014,1)
    wd.two_letter_day(5).must_equal "Su"
    wd.two_letter_day(15).must_equal "We"
  end
end
