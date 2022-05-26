class CreateGameReview < ActiveRecord::Migration
  def change
    create_table :game_reviews do |t|
      t.string :name
    end
  end
end
