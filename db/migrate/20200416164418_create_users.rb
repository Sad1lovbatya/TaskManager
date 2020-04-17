class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    add_index :users, :email, unique: true
    
    create_table :users do |t|
      t.string :first_name
      t.string :last_name
      t.string :password_digest
      t.string :email
      t.string :avatar
      t.string :type

      t.timestamps
    end
  end
end
