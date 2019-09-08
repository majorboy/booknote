class RenameFinishedColumnToBooks < ActiveRecord::Migration[5.0]
  def change
    rename_column :books, :finished, :status
  end
end
