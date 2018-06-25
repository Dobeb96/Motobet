class Moto2Controller < ApplicationController
  def index
    @moto2s = Moto2.order('match_starts_at DESC').page(params[:page]).per(10)
  end
end
