class AddParamsToAbouts < ActiveRecord::Migration
  def change
    add_column :abouts, :main_title, :string
    add_column :abouts, :main_paragraph, :text
    add_column :abouts, :approach_title, :string
    add_column :abouts, :approach_paragraph, :text
    add_column :abouts, :education_title, :string
    add_column :abouts, :education_paragraph, :text
    add_column :abouts, :professional_membership_title, :string
    add_column :abouts, :professional_membership_paragraph, :text
    remove_column :abouts, :title, :string
    remove_column :abouts, :paragraph, :text
    remove_column :abouts, :subtitle, :string
    remove_column :abouts, :point_form, :text
  end
end
