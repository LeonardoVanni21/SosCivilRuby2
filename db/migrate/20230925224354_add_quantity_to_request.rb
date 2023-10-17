class AddQuantityToRequest < ActiveRecord::Migration[5.2]
  def change
    add_column :requests, :quantity, :integer
  end
end
