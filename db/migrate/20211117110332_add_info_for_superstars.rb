class AddInfoForSuperstars < ActiveRecord::Migration[6.0]
  def change
    add_column :superstars, :bio, :string
    add_column :superstars, :price, :float
  end
end
