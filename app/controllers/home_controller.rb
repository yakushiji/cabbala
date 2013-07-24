class HomeController < ApplicationController
  def index
  end

  def result
    @karma_number = KarmaNumber.find(params[:karma_number])
  end

  def show
  end
end
