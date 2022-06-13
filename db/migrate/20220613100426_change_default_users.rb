class ChangeDefaultUsers < ActiveRecord::Migration[7.0]
  def change
    change_column_default :users, :bouldering, from: true, to: false
    change_column_default :users, :sport_climbing, from: true, to: false
    change_column_default :users, :top_roping, from: true, to: false
    change_column_default :users, :trad_climbing, from: true, to: false
  end
end
