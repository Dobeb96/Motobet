class HomeController < ApplicationController
  def index
    motogps = Motogp.where(main_page: 1)
    moto2s = Moto2.where(main_page: 1)
    moto3s = Moto3.where(main_page: 1)
    esports = Esport.where(main_page: 1)
    formula1s = Formula1.where(main_page: 1)
    footballs = Football.where(main_page: 1)
    basketballs = Basketball.where(main_page: 1)

    @main_page_bets = formula1s + motogps + moto2s + moto3s + esports + basketballs + footballs
    @main_page_bets = @main_page_bets.sort_by { |record| record.match_starts_at }.reverse
    
    @main_page_bets = Kaminari.paginate_array(@main_page_bets).page(params[:page]).per(10)
  end
end