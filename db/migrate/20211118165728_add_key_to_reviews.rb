class AddKeyToReviews < ActiveRecord::Migration[6.0]
  def change
    add_reference :reviews, :superstar, foreign_key: true
  end
end
