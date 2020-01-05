class RemoveGenreFromBooks < ActiveRecord::Migration[5.0]
  def change
    remove_column :books, :genre, :integer
  end
end
