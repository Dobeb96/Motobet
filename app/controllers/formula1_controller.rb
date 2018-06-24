class Formula1Controller < ApplicationController
  def index
    @formula1 = Formula1.order('match_starts_at DESC').page(params[:page]).per(1)
  end
end
