class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :title
      t.text :content
      t.string :uuid
      t.integer :river_id

      t.timestamps null: false
    end
    add_index :posts, :uuid
    add_index :posts, :river_id
  end
end
