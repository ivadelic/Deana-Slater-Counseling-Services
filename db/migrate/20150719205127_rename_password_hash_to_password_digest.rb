class RenamePasswordHashToPasswordDigest < ActiveRecord::Migration
  def change
    add_column :admins, :password_digest, :string
    remove_column :admins, :pasword_hash, :string
  end
end
