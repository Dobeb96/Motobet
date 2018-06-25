class CreateMotogps < ActiveRecord::Migration[5.1]
  def change
    create_table :motogps do |t|
      t.datetime :match_starts_at
      t.string :team_1
      t.string :team_2
      t.string :league
      t.float :odds
      t.integer :chance
      t.string :pick
      t.integer :status
      t.binary :main_page

      t.timestamps
    end
  end
end
