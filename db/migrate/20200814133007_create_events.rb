class CreateEvents < ActiveRecord::Migration[6.0]
  def change
    create_table :events do |t|
      t.string :title, null: false
      t.text :full_description, null: false
      t.string :image_url, null: false, default: "http://rocciaevents.com/wp-content/uploads/2014/09/event1.gif"
      t.date :date, null: false
      t.integer :host_id
      t.integer :total_quantity
      t.integer :quantity_left
      t.float :price, null: false, default: 0.00, scale: 2
      t.string :venue
      t.string :street_address
      t.string :city_state_zip
      t.timestamps
    end

    add_index :events, :title
    add_index :events, :date
    add_index :events, :price
    add_index :events, :host_id
  end
end
