class EsportController < ApplicationController
  def index
    @esports = Esport.order('match_starts_at DESC').page(params[:page]).per(10)
  end
end
