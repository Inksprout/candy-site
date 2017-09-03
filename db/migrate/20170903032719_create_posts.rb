class CreatePosts < ActiveRecord::Migration[5.0]
  def change
    create_table :posts do |t|
      t.text :title
      t.text :content
      t.datetime :date
      t.integer :user_id

      t.timestamps
    end
  end
end
