class CreateReviewsGames < ActiveRecord::Migration
  def change
    create_table :reviews_games do |t|
      t.string :name
      t.string :type
      t.string :developer
      t.text :description
      t.text :review
      t.integer :stars

      t.timestamps null: false
    end
  end
end
