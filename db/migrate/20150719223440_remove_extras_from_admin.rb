class RemoveExtrasFromAdmin < ActiveRecord::Migration
  def change
    remove_column :admins, :password, :string
  end
end
