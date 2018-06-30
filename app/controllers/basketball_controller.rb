class BasketballController < ApplicationController
  include ProfitCalculator

  def index
    @basketballs = Basketball.order('match_starts_at DESC').page(params[:page]).per(10)
    @profit = profit(Basketball)
  end
end
