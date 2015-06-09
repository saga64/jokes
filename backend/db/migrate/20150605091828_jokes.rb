class Jokes < ActiveRecord::Migration
  def change
    create_table :jokes do |t|
      t.text :body, :null => false
      t.references :user
      t.integer :thumbs

      t.timestamps
    end
  end
end
