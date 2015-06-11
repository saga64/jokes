class AddCommentTable < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.text :body, :null => false
      t.references :user
      t.references :joke
      t.integer :thumbs
      t.timestamps
    end
  end
end
