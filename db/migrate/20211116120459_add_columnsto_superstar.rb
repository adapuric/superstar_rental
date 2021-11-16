class AddColumnstoSuperstar < ActiveRecord::Migration[6.0]
  def change
    add_column :superstars, :name, :string
    add_column :superstars, :event_type, :string
    add_column :superstars, :availabilities, :boolean
  end
end
