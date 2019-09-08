class ChangeDataStatusToBooks < ActiveRecord::Migration[5.0]
  def change
    change_column :books, :status, :integer
  end
end
