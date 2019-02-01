class AddUuidToRiver < ActiveRecord::Migration
  def change
    add_column :rivers, :uuid, :string
    add_index :rivers, :uuid
  end
end
