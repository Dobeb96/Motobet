class FootballController < ApplicationController
  include ProfitCalculator
  
  def index
    @footballs = Football.order('match_starts_at DESC').page(params[:page]).per(10)
    @profit = profit(Football)
  end
end
