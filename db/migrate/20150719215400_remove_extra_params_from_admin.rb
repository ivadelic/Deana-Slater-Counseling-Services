class RemoveExtraParamsFromAdmin < ActiveRecord::Migration
  def change
    add_column :admins, :password, :string
    remove_column :admins, :password_salt, :string
  end
end
