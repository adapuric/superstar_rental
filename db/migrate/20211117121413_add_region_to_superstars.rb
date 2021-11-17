class AddRegionToSuperstars < ActiveRecord::Migration[6.0]
  def change
    add_column :superstars, :region, :string
  end
end
