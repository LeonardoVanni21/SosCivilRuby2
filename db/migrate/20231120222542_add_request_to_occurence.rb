class AddRequestToOccurence < ActiveRecord::Migration[5.2]
  def change
    add_reference :occurences, :requests, foreign_key: true
  end
end
