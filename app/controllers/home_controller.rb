class HomeController < ApplicationController
  def index
    motogps = Motogp.where(main_page: 1)
    moto2s = Moto2.where(main_page: 1)
    moto3s = Moto3.where(main_page: 1)
    esports = Esport.where(main_page: 1)
    formula1s = Formula1.where(main_page: 1)

    # sql = Item.connection.unprepared_statement {
    #  "((#{motogps.to_sql}) UNION (#{formula1s.to_sql})) AS items"
    # }

    # def union(scope1, scope2)
      # ids = scope1.collect + scope2.collect
    # end

    # @main_page_bets = motogps.match_starts_at.union(formula1s.match_starts_at)
    @main_page_bets = Motogp.all.or(Formula1.all)

    # @main_page_bets = union(motogps, formula1s)
    # @main_page_bets = ActiveRecord::UnionScope:union_scope
    # @main_page_bets = formula1s + motogps
    # @main_page_bets.sort_by! { |c| c.match_starts_at }
    # @main_page_bets.page(params[:page]).per(10)

  end
end

module ActiveRecord::UnionScope
  def self.included(base)
    base.send :extend, ClassMethods
  end
  
  module ClassMethods
    def union_scope(*scopes)
      id_column = "#{table_name}.#{primary_key}"
      sub_query = scopes.map { |s| s.select(id_column).to_sql }.join(" UNION ")
      where "#{id_column} IN (#{sub_query})"
    end
  end
end