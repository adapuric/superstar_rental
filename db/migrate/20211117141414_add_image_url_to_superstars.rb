class AddImageUrlToSuperstars < ActiveRecord::Migration[6.0]
  def change
    add_column :superstars, :image_url, :string
  end
end
