class CreateHotelsPics < ActiveRecord::Migration
  def change
    create_table :hotels_pics do |t|
      t.string :title
      t.string :description
      t.string :image
      t.references :hotel

      t.timestamps
    end
    add_index :hotels_pics, :hotel_id
  end
end
