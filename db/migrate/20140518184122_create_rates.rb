class CreateRates < ActiveRecord::Migration
  def change
    create_table :rates do |t|
      t.references :user
      t.references :hotel
      t.string :tilte
      t.text :body
      t.integer :rate

      t.timestamps
    end
    add_index :rates, :user_id
    add_index :rates, :hotel_id
  end
end
