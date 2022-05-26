class CreateReviewedGames < ActiveRecord::Migration
  def change
    create_table :reviewed_games do |t|
      t.string :name
      t.string :type
      t.string :developer
      t.text :description
      t.text :review
      t.integer :stars
    end
  end
end
