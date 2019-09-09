class AddUserIdToBooks < ActiveRecord::Migration[5.0]
  def up 
    add_reference :books, :user, foreign_key: true
  end

  def down
    remove_reference :books, :user, foreign_key: true
  end 
end
