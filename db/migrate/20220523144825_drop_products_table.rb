class DropProductsTable < ActiveRecord::Migration
  def up
    drop_table :game_reviews
  end

  def down
    raise ActiveRecord::IrreversibleMigration
  end
end
