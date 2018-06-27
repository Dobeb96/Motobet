class MotogpController < ApplicationController
  include ProfitCalculator

  def index
    @motogps = Motogp.order('match_starts_at DESC').page(params[:page]).per(10)
    @profit = profit(Motogp)
  end
end
