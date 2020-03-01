class CreateOrganizations < ActiveRecord::Migration[6.0]
  def change
    create_table :organizations do |t|
      t.string :name, null: false
      t.string :email, null: false
      t.string :hashed_password

      t.timestamps
    end
  
  add_index :organizations,"LOWER(email)",unique: true
  end
end
