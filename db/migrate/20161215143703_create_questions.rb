class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      t.string :q_content

      t.integer :user_id
      t.integer :favorite_id

      t.timestamps null:false
    end
  end
end
