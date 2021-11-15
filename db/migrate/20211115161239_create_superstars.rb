class CreateSuperstars < ActiveRecord::Migration[6.0]
  def change
    create_table :superstars do |t|

      t.timestamps
    end
  end
end
