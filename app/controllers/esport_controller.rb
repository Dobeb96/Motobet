class EsportController < ApplicationController
  include ProfitCalculator

  def index
    @esports = Esport.order('match_starts_at DESC').page(params[:page]).per(10)
    @profit = profit(Esport)
  end
end
