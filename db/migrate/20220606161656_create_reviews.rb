class CreateReviews < ActiveRecord::Migration[7.0]
  def change
    create_table :reviews do |t|
      t.references :user, null: false, foreign_key: true
      t.text :description
      t.integer :rating
      t.references :author, foreign_key: { to_table: :users }

      t.timestamps
    end
  end
end
