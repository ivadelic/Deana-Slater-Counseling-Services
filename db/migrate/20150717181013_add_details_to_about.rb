class AddDetailsToAbout < ActiveRecord::Migration
  def change
    add_column :abouts, :professional_membership_point1, :text
    add_column :abouts, :professional_membership_point2, :text
    add_column :abouts, :professional_membership_point3, :text
    remove_column :abouts, :professional_membership_paragraph, :text
  end
end
