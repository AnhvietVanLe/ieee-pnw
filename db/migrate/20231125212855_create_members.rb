class CreateMembers < ActiveRecord::Migration[7.1]
  def change
    create_table :members do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :phone
      t.string :ieee_membership_number
      t.string :ieee_membership_grade
      t.boolean :ieee_membership_status
      t.boolean :ieee_hkn
      t.string :major
      t.string :grade_year
      t.date :grad_date
      t.string :linkedin_username
      t.string :discord_username

      t.timestamps
    end
  end
end
