class RemoveEventDateFromRequests < ActiveRecord::Migration[5.2]
  def change
    remove_column :requests, :solicitationDate, :date
  end
end
