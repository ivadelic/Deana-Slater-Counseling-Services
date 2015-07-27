class RemovePasswordHashFromAdmin < ActiveRecord::Migration
  def change
    remove_column :admins, :password_hash, :string
  end
end
