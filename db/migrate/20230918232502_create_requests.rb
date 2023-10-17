class CreateRequests < ActiveRecord::Migration[5.2]
  def change
    create_table :requests do |t|
      t.string :item
      t.string :status
      t.date :solicitationDate
      t.integer :idSupplie

      t.timestamps
    end
  end
end
