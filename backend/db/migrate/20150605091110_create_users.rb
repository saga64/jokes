class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :username, :null => false
      t.string :password_digest, :null => false
      t.datetime :last_login, :null => true
      t.string :email, :null => true
      t.integer :gender, :null => false, :default => 0
      t.string :avatar
      t.integer :thumbs, :null => false, :default => 0

      t.timestamps null: false
    end
  end
end
