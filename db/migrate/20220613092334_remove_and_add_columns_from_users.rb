class RemoveAndAddColumnsFromUsers < ActiveRecord::Migration[7.0]
  def change
    remove_column :users, :bouldering
    remove_column :users, :sport_climbing
    remove_column :users, :top_roping
    remove_column :users, :bouldering
    remove_column :users, :sport_climbing
    remove_column :users, :trad_climbing
    add_column :users, :bouldering, :boolean, null: false, default: true
    add_column :users, :sport_climbing, :boolean, null: false, default: true
    add_column :users, :top_roping, :boolean, null: false, default: true
    add_column :users, :trad_climbing, :boolean, null: false, default: true
  end
end
