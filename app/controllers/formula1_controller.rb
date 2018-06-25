class Formula1Controller < ApplicationController
  def index
    @formula1s = Formula1.order('match_starts_at DESC').page(params[:page]).per(10)
  end
end
