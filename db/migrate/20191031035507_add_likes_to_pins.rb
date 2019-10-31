class AddLikesToPins < ActiveRecord::Migration[5.2]
  def change
    add_column :pins, :likes, :integer
  end
end
