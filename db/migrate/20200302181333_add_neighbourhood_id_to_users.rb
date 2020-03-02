class AddNeighbourhoodIdToUsers < ActiveRecord::Migration[5.2]
  def change
    add_reference :users, :neighbourhood, foreign_key: true
  end
end
