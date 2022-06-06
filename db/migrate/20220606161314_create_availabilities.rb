class CreateAvailabilities < ActiveRecord::Migration[7.0]
  def change
    create_table :availabilities do |t|
      t.date :date
      t.references :user, null: false, foreign_key: true
      t.time :begin_time
      t.time :end_time

      t.timestamps
    end
  end
end
