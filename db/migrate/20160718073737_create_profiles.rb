class CreateProfiles < ActiveRecord::Migration
  def change
    create_table :profiles do |t|
      t.integer :user_id #tämä pitää olla tässä, että user ja profile taulut toimii yhteen 
      
      t.string :first_name
      t.string :last_name
      t.string :phone_number
      t.string :contact_email
      
      t.text :description 
      
      t.timestamps
    end
  end
end