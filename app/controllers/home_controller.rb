class HomeController < ApplicationController
  def index
  end

  def result
    year = params[:year]
    month = params[:month]
    day = params[:day]
    year_sum = 0
    month_sum = 0
    day_sum = 0
    
    while year.length > 1
      year = year.split('')
      year.each{|x| year_sum += x.to_i}
      year = year_sum.to_s
      year_sum = 0
    end

    while month.length > 1
      month = month.split('')
      month.each{|x| month_sum += x.to_i}
      month = month_sum.to_s
      month_sum = 0
    end

    while day.length > 1
      day = day.split('')
      day.each{|x| day_sum += x.to_i}
      day = day_sum.to_s
      day_sum = 0
    end

    karma_number = year.to_i + month.to_i + day.to_i
    karma_number_sum = 0

    while karma_number.to_s.length > 1
      karma_number = karma_number.split('')
      karma_number.each{|x| karma_number_sum += x.to_i}
      karma_number = karma_number_sum
      karma_number_sum = 0
    end

    @karma_number = KarmaNumber.find(karma_number)
  end
end
