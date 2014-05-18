class CreateResRooms < ActiveRecord::Migration
  def change
    create_table :res_rooms do |t|
      t.references :user
      t.references :room
      t.references :hotel
      t.date :chkin_date
      t.date :chkout_date

      t.timestamps
    end
    add_index :res_rooms, :user_id
    add_index :res_rooms, :room_id
    add_index :res_rooms, :hotel_id
  end
end
