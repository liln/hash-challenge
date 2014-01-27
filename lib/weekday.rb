require "date"

class Weekday
  def initialize(yr,mo)
    wday = {0 => "Su", 1 => "Mo", 2 => "Tu", 3 => "We", 4 => "Th", 5 => "Fr", 6 => "Sa"}
    @month = Hash.new
    (1..31).each do |day|
      @month[day] = wday[Date.new(yr,mo,day).wday] if Date.valid_date?(yr,mo,day)
    end
  end

  def two_letter_day(daynum)
    @month[daynum]
  end

end
