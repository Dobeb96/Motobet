class Formula1Controller < ApplicationController
  include ProfitCalculator

  def index
    @formula1s = Formula1.order('match_starts_at DESC').page(params[:page]).per(10)
    @profit = profit(Formula1)
  end
end