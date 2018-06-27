class Moto3Controller < ApplicationController
  include ProfitCalculator

  def index
    @moto3s = Moto3.order('match_starts_at DESC').page(params[:page]).per(10)
    @profit = profit(Moto3)
  end
end
