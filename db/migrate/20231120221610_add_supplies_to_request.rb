class AddSuppliesToRequest < ActiveRecord::Migration[5.2]
  def change
    add_reference :requests, :supplies, foreign_key: true
  end
end
