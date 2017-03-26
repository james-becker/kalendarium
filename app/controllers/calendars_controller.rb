require 'date'
require 'time'

class CalendarsController < ApplicationController

  def show(basis=Date.new(Date.today.year, Date.today.month, 1))
    @basis = basis
    @first_wday = basis.wday
    @prior_days = 7 - @first_wday
    @days_in_month = days_in_month(basis.month, basis.year)
    # @following_days = 7 - @prior_days + days_in_month(basis.month, basis.year)
  end

  private

  COMMON_YEAR_DAYS_IN_MONTH = [nil, 31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31]

  def days_in_month(month, year = Time.now.year)
     return 29 if month == 2 && Date.gregorian_leap?(year)
     COMMON_YEAR_DAYS_IN_MONTH[month]
  end

end