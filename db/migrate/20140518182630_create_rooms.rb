class CreateRooms < ActiveRecord::Migration
  def change
    create_table :rooms do |t|
      t.integer :number
      t.string :type
      t.float :price
      t.references :hotel

      t.timestamps
    end
    add_index :rooms, :hotel_id
  end
end
