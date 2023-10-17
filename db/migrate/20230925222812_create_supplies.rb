class CreateSupplies < ActiveRecord::Migration[5.2]
  def change
    create_table :supplies do |t|
      t.string :name
      t.text :details
      t.integer :stock
      t.string :unity_of_measure

      t.timestamps
    end
  end
end
