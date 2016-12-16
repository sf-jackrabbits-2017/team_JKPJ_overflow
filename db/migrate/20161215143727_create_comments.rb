class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.integer :user_id
      t.string :c_content

      t.integer :commentable_id
      t.string :commentable_type

      t.timestamps null:false
    end
  end
end
