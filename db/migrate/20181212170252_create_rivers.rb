class CreateRivers < ActiveRecord::Migration
  def change
    create_table :rivers do |t|
      t.string :title

      t.timestamps null: false
    end
  end
end
