class Moto2Controller < ApplicationController
  include ProfitCalculator

  def index
    @moto2s = Moto2.order('match_starts_at DESC').page(params[:page]).per(10)
    @profit = profit(Moto2)
  end
end
