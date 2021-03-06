class CreateBooks < ActiveRecord::Migration[5.0]
  def change
    create_table :books do |t|
      t.string :title, null:false
      t.string :author
      t.integer :genre, null:false
      t.boolean :finished, default: false, null: false
      t.timestamps
    end
  end
end
