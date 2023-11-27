class AddSuppliesToRequest < ActiveRecord::Migration[5.2]
  def change
    add_reference :requests, :supply, foreign_key: true
  end
end
