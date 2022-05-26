class CreateGameReviews < ActiveRecord::Migration
  def change
    create_table :game_reviews do |t|
      t.string :name
      t.string :genre
      t.string :developer
      t.text :description
      t.text :review
      t.integer :stars

      t.timestamps null: false
    end
  end
end
