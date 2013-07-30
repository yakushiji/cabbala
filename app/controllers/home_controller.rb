class HomeController < ApplicationController
  def index
  end

  def result
    year = params[:date][:year].to_i 
    month = params[:date][:month].to_i 
    day = params[:date][:day].to_i

    year_sum = 0
    month_sum = 0
    day_sum = 0
    
    while year.to_s.length > 1
      year = year.to_s.split('')
      year.each{|x| year_sum += x.to_i}
      year = year_sum.to_s
      year_sum = 0
    end

    while month.to_s.length > 1
      month = month.to_s.split('')
      month.each{|x| month_sum += x.to_i}
      month = month_sum.to_s
      month_sum = 0
    end

    while day.to_s.length > 1
      day = day.to_s.split('')
      day.each{|x| day_sum += x.to_i}
      day = day_sum.to_s
      day_sum = 0
    end

    karma_number = year.to_i + month.to_i + day.to_i
    karma_number_sum = 0

    while (karma_number.to_s.length > 1 and karma_number != 11 and karma_number != 22)
      karma_number = karma_number.to_s.split('')
      karma_number.each{|x| karma_number_sum += x.to_i}
      karma_number = karma_number_sum
      karma_number_sum = 0
    end

    @karma_number = KarmaNumber.find(karma_number)
  end
end
