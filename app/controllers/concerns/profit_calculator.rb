module ProfitCalculator extend ActiveSupport::Concern
  def profit(discipline)
    won_array = discipline.where('match_starts_at > ?', Date.today - 30)
                          .where('status = ?', 1)
                            .where('status != ?', 0).pluck(:odds)
    lost_array = discipline.where('match_starts_at > ?', Date.today - 30)
                          .where('status = ?', 2).pluck(:odds)
    won = won_array.inject(0){ |sum, x| sum + (x - 1) }
    won -= lost_array.size
    (10 * won).round(0)
  end
end