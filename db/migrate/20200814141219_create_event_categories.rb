class CreateEventCategories < ActiveRecord::Migration[6.0]
  def change
    create_table :event_categories do |t|
      t.integer :category_id
      t.integer :event_id, null: false

      t.timestamps
    end
  end
end
