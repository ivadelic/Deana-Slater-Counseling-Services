class AddPasswordToAdmin < ActiveRecord::Migration
  def change
    add_column :admins, :password_digest, :string
    add_column :admins, :password, :string
  end
end
