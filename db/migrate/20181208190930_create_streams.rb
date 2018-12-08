class CreateStreams < ActiveRecord::Migration
  def change
    create_table :streams do |t|
      t.integer :user_id
      t.integer :river_id

      t.timestamps null: false
    end
  end
end
