class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :name
      t.string :profile_picture
      t.boolean :admin, default: false

      t.timestamps
    end
  end
end
