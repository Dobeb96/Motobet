class MotogpController < ApplicationController
  def index
    @motogps = Motogp.order('match_starts_at DESC').page(params[:page]).per(10)
  end
end
