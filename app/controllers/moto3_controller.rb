class Moto3Controller < ApplicationController
  def index
    @moto3s = Moto3.order('match_starts_at DESC').page(params[:page]).per(10)
  end
end
