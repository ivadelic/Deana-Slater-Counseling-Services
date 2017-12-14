class CreateTherapists < ActiveRecord::Migration
  def change
    create_table :therapists do |t|
      t.string :therapists_title
      t.text :therapists_text
      t.string :therapist1_title
      t.text :therapist1_text
      t.string :therapist2_title
      t.text :therapist2_text
      t.string :therapist1_link
      t.string :therapist2_link

      t.timestamps null: false
    end
  end
end
