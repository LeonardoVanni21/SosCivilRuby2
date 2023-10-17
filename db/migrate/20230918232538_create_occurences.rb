class CreateOccurences < ActiveRecord::Migration[5.2]
  def change
    create_table :occurences do |t|
      t.string :status
      t.date :deliveryDate
      t.integer :idRequest

      t.timestamps
    end
  end
end
