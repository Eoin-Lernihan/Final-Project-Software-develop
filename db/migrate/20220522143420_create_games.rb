class CreateGames < ActiveRecord::Migration
  def change
    create_table :games do |t|
      t.string :name
      t.string :type
      t.string :developer
      t.text :description
      t.text :reveiw
      t.int :stars
      t.datetime :release_date
      t.timestamps
    end
  end
end
