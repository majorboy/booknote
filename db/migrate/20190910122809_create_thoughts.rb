class CreateThoughts < ActiveRecord::Migration[5.0]
  def change
    create_table :thoughts do |t|
      t.text :thought
      t.integer :book_id
      t.timestamps
      t.timestamps
    end
  end
end
